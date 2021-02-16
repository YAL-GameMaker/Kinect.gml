#include "stdafx.h"

///
struct kinect_frame_description {
	int width;
	int height;
	float horizontalFieldOfView;
	float verticalFieldOfView;
	float diagonalFieldOfView;
	unsigned int lengthInPixels;
	unsigned int bytesPerPixel;
};
void kinect_get_frame_description_1(IFrameDescription* fd, kinect_frame_description* out) {
	fd->get_Width(&out->width);
	fd->get_Height(&out->height);
	fd->get_HorizontalFieldOfView(&out->horizontalFieldOfView);
	fd->get_VerticalFieldOfView(&out->verticalFieldOfView);
	fd->get_DiagonalFieldOfView(&out->diagonalFieldOfView);
	fd->get_LengthInPixels(&out->lengthInPixels);
	fd->get_BytesPerPixel(&out->bytesPerPixel);
}
dllx double kinect_get_frame_description_raw(kinect_frame_description* out, double _kind) {
	if (kinect_invalid) return -1;
	auto kind = (kinect_source)_kind;
	IFrameDescription* fd;
	bool ok = true;
	switch (kind) {
		case kinect_source::color: {
			IColorFrameSource* cfs = nullptr;
			if (!hrx(knSensor->get_ColorFrameSource(&cfs)) || !cfs) break;
			if (ok = hrx(cfs->get_FrameDescription(&fd))) kinect_get_frame_description_1(fd, out);
			SafeRelease(cfs);
			return ok;
		};
		case kinect_source::depth: {
			IDepthFrameSource* src = nullptr;
			if (!hrx(knSensor->get_DepthFrameSource(&src)) || !src) break;
			if (ok = hrx(src->get_FrameDescription(&fd))) kinect_get_frame_description_1(fd, out);
			SafeRelease(src);
			return ok;
		};
		case kinect_source::infrared: {
			IInfraredFrameSource* src = nullptr;
			if (!hrx(knSensor->get_InfraredFrameSource(&src)) || !src) break;
			if (ok = hrx(src->get_FrameDescription(&fd))) kinect_get_frame_description_1(fd, out);
			SafeRelease(src);
			return ok;
		};
		case kinect_source::infrared_long_exposure: {
			ILongExposureInfraredFrameSource* src = nullptr;
			if (!hrx(knSensor->get_LongExposureInfraredFrameSource(&src)) || !src) break;
			if (ok = hrx(src->get_FrameDescription(&fd))) kinect_get_frame_description_1(fd, out);
			SafeRelease(src);
			return ok;
		};
	}
	return false;
}