for (var i = 0; i < array_length(kArray); i++) {
	if (keyboard_check_pressed(ord("1") + i)) kCurr = kArray[i];
}
if (kinect_reader_acquire_frame()) {
	//trace("frame", kinect_reader_get_raw_color_data_format())
	kCurr.update();
	kinect_reader_release_frame();
}
