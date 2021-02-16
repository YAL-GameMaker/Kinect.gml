#include "stdafx.h"
#include <algorithm>
#include <execution>

static IMultiSourceFrameReader* knReader = nullptr;

static IMultiSourceFrame* kinectMultiFrame = nullptr;
static IColorFrameReference* knColorFrameRef = nullptr;
static IColorFrame* knColorFrame = nullptr;
static IDepthFrameReference* knDepthFrameRef = nullptr;
static IDepthFrame* knDepthFrame = nullptr;
static IInfraredFrameReference* knInfraredFrameRef = nullptr;
static IInfraredFrame* knInfraredFrame = nullptr;

bool kinect_reader_release_frame_impl() {
	SafeRelease(knColorFrameRef);
	SafeRelease(knColorFrame);
	SafeRelease(knDepthFrameRef);
	SafeRelease(knDepthFrame);
	SafeRelease(knInfraredFrameRef);
	SafeRelease(knInfraredFrame);
	return SafeRelease(kinectMultiFrame);
}

///
dllx double kinect_reader_open(double _source_types) {
	if (kinect_invalid) return -1;
	return hrx(knSensor->OpenMultiSourceFrameReader((DWORD)_source_types, &knReader));
}

///
dllx double kinect_reader_close() {
	kinect_reader_release_frame_impl();
	return SafeRelease(knReader);
}

///
dllx double kinect_reader_acquire_frame() {
	if (kinect_invalid || !knReader) return -1;
	kinect_reader_release_frame_impl();
	return SUCCEEDED(knReader->AcquireLatestFrame(&kinectMultiFrame));
}

///
dllx double kinect_reader_release_frame() {
	if (kinect_invalid || !knReader) return -1;
	return kinect_reader_release_frame_impl();
}

#pragma region color
bool kinect_reader_ensure_color() {
	if (knColorFrame) return true;
	if (kinect_invalid || !kinectMultiFrame) return false;
	if (!hrx(kinectMultiFrame->get_ColorFrameReference(&knColorFrameRef))) return false;
	return hrx(knColorFrameRef->AcquireFrame(&knColorFrame));
}

dllx double kinect_reader_copy_raw_color_data_(byte* out, double _out_size) {
	if (!kinect_reader_ensure_color()) return -1;
	auto out_size = (UINT)_out_size;
	#if 0
	UINT n = 0; BYTE* b = nullptr;
	if (hrx(knColorFrame->AccessRawUnderlyingBuffer(&n, &b))) {
		//trace("%d <-> %d", n, out_size);
		if (out_size >= n) memcpy(out, b, n);
		return true;
	} else return false;
	#else
	return hrx(knColorFrame->CopyRawFrameDataToArray((UINT)out_size, out));
	#endif
}

///
dllx double kinect_reader_get_raw_color_data_format() {
	if (!kinect_reader_ensure_color()) return -1;
	ColorImageFormat fmt = ColorImageFormat_None;
	return hrx(knColorFrame->get_RawColorImageFormat(&fmt)) ? fmt : -1;
}

///
enum class kinect_color_image_format {
	none = 0,
	rgba = 1,
	yuv = 2,
	bgra = 3,
	bayer = 4,
	yuy2 = 5
};

dllx double kinect_reader_copy_converted_color_data_(byte* out, double _out_size, double _format) {
	if (!kinect_reader_ensure_color()) return -1;
	auto out_size = (UINT)_out_size;
	return hrx(knColorFrame->CopyConvertedFrameDataToArray((UINT)out_size, out, (ColorImageFormat)_format));
}
#pragma endregion

#pragma region depth
bool kinect_reader_ensure_depth() {
	if (knDepthFrame) return true;
	if (kinect_invalid || !kinectMultiFrame) return false;
	if (!hrx(kinectMultiFrame->get_DepthFrameReference(&knDepthFrameRef))) return false;
	return hrx(knDepthFrameRef->AcquireFrame(&knDepthFrame));
}

dllx double kinect_reader_copy_raw_depth_data_(UINT16* out, double _out_size) {
	if (!kinect_reader_ensure_depth()) return -1;
	return hrx(knDepthFrame->CopyFrameDataToArray((UINT)_out_size, out));
}
struct kinect_reader_get_converted_depth_data_t {
	double min, max;
	int color;
};
dllx double kinect_reader_copy_converted_depth_data_(UINT32* out, double _out_size, kinect_reader_get_converted_depth_data_t* args) {
	if (!kinect_reader_ensure_depth()) return -1;
	auto out_size = (UINT)_out_size;
	auto min = args->min;
	auto max = args->max;
	auto col = args->color;
	auto mul = 255.0 / (max - min);
	UINT len; UINT16* data;
	if (hrx(knDepthFrame->AccessUnderlyingBuffer(&len, &data))) {
		if (out_size < len * 2) return -1;
		std::transform(std::execution::par_unseq, data, data + len, out, [min, mul, col](UINT16 d) -> UINT {
			auto a = (UINT)(((double)d / 65535.0 - min) * mul);
			if (a < 0) a = 0; else if (a > 255) a = 255;
			return col | (a << 24);
			});
		return true;
	} else return false;
}
#pragma endregion

#pragma region infrared
bool kinect_reader_ensure_infrared() {
	if (knInfraredFrame) return true;
	if (kinect_invalid || !kinectMultiFrame) return false;
	if (!hrx(kinectMultiFrame->get_InfraredFrameReference(&knInfraredFrameRef))) return false;
	return hrx(knInfraredFrameRef->AcquireFrame(&knInfraredFrame));
}

dllx double kinect_reader_copy_raw_infrared_data_(UINT16* out, double _out_size) {
	if (!kinect_reader_ensure_infrared()) return -1;
	return hrx(knInfraredFrame->CopyFrameDataToArray((UINT)_out_size, out));
}
struct kinect_reader_get_converted_infrared_data_t {
	double min, max;
	int color;
};
dllx double kinect_reader_copy_converted_infrared_data_(UINT32* out, double _out_size, kinect_reader_get_converted_infrared_data_t* args) {
	if (!kinect_reader_ensure_infrared()) return -1;
	auto out_size = (UINT)_out_size;
	auto min = args->min;
	auto max = args->max;
	auto col = args->color;
	auto mul = 255.0 / (max - min);
	UINT len; UINT16* data;
	if (hrx(knInfraredFrame->AccessUnderlyingBuffer(&len, &data))) {
		if (out_size < len * 2) return -1;
		std::transform(std::execution::par_unseq, data, data + len, out, [min, mul, col](UINT16 d) -> UINT {
			auto a = (UINT)(((double)d / 65535.0 - min) * mul);
			if (a < 0) a = 0; else if (a > 255) a = 255;
			return col | (a << 24);
			});
		return true;
	} else return false;
}
#pragma endregion