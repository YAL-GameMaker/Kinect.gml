if (kinect_reader_acquire_frame()) {
	var ok;
	switch (kind) {
		case kinect_source_depth:
			ok = kinect_reader_copy_converted_depth_data(buffer, 0, 0.1, c_white);
			break;
		case kinect_source_color:
			ok = kinect_reader_copy_converted_color_data(buffer, kinect_color_image_format_rgba);
			break;
		default:
			ok = false;
	}
	if (ok) {
		if (surf == noone) surf = surface_create(width, height);
		buffer_set_surface(buffer, surf, 0, 0, 0);
	}
	kinect_reader_release_frame();
}
