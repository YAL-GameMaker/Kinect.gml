kinect_init();
trace("open?", kinect_open());
//show_message("!");
kColor = new KinectSource(kinect_get_frame_description(kinect_source_color), function() {
	return kinect_reader_copy_converted_color_data(buffer, kinect_color_image_format_rgba);
});
kDepth = new KinectSource(kinect_get_frame_description(kinect_source_depth), function() {
	return kinect_reader_copy_converted_depth_data(buffer, 0, 0.1, 0xFFFFFF);
});
kInfrared = new KinectSource(kinect_get_frame_description(kinect_source_infrared), function() {
	return kinect_reader_copy_converted_infrared_data(buffer, 0, 0.03, 0xFFFFFF);
});
kArray = [kColor, kDepth, kInfrared];
kCurr = kArray[0]; /// @is {KinectSource}
color = kinect_get_frame_description(kinect_source_color);
trace("open reader?", kinect_reader_open(kinect_source_depth | kinect_source_color | kinect_source_infrared));