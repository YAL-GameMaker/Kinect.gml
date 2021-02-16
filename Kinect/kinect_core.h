#pragma once
#include <Kinect.h>
#include <stdio.h>

#if defined(WIN32)
#define dllx extern "C" __declspec(dllexport)
#elif defined(GNUC)
#define dllx extern "C" __attribute__ ((visibility("default"))) 
#else
#define dllx extern "C"
#endif

#define trace(...) { printf("[%s:%d] ", __FILE__, __LINE__); printf(__VA_ARGS__); printf("\n"); fflush(stdout); }

template<class Interface>
inline bool SafeRelease(Interface*& pInterfaceToRelease) {
	if (pInterfaceToRelease != NULL) {
		pInterfaceToRelease->Release();
		pInterfaceToRelease = NULL;
		return true;
	} else return false;
}

extern void __hrx2(HRESULT hr, const char* context, const char* file, int line);
inline bool __hrx(HRESULT hr, const char* context, const char* file, int line) {
	if (FAILED(hr)) {
		__hrx2(hr, context, file, line);
		return false;
	} else return true;
}
#define hrx(expr) __hrx(expr, #expr, __FILE__, __LINE__)

extern IKinectSensor* knSensor;

inline bool __kinect_invalid() {
	if (knSensor != nullptr) {
		BOOLEAN b;
		return FAILED(knSensor->get_IsOpen(&b)) || b == FALSE;
	} else return false;
}
#define kinect_invalid __kinect_invalid()

/// NB! These match up with FrameSourceTypes
enum class kinect_source : int {
	color = 1,
	infrared = 2,
	infrared_long_exposure = 4,
	depth = 8,
	//body_index = 16,
	//body = 32,
	//audio = 64,
};