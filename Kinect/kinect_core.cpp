/// @author YellowAfterlife
/// @autostruct Kinect_structs.gml
#include "stdafx.h"
#include <comdef.h>

IKinectSensor* knSensor = nullptr;

void __hrx2(HRESULT hr, const char* context, const char* file, int line) {
	_com_error err(hr);
	printf("[%s:%d] %s failed - HRESULT of %x - ", file, line, context, hr);
	wprintf(L"%s", err.ErrorMessage());
	printf("\n");
	fflush(stdout);
}

///
dllx double kinect_init_raw() {
	return hrx(GetDefaultKinectSensor(&knSensor));
}

///
dllx double kinect_open() {
	return hrx(knSensor->Open());
}

///
dllx double kinect_close() {
	return hrx(knSensor->Close());
}
