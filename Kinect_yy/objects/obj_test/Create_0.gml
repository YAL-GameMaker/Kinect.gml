kinect_init();
trace("open?", kinect_open());
kind = kinect_source_color;
desc = kinect_get_frame_description(kind);
if (desc == undefined) {
	show_message("No kinect!");
	exit;
}
width = desc[kinect_frame_description_width];
height = desc[kinect_frame_description_height];
buffer = buffer_create(width * height * 4, buffer_fixed, 1);
surf = noone;
trace("open reader?", kinect_reader_open(kind));