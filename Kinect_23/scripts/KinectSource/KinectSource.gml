function KinectSource(_desc/*:kinect_frame_description*/, _update/*:function<bool>*/) constructor {
	desc = _desc; /// @is {kinect_frame_description}
	width = _desc.width;
	height = _desc.height;
	buffer = buffer_create(width * height * 4, buffer_fixed, 1);
	updateInner = method(self, _update);
	surf = noone; /// @is {surface}
	timeTotal = 0;
	timeCount = 0;
	time = 0;
	static update = function() {
		var t = get_timer();
		updateInner();
		timeTotal += (get_timer() - t);
		time = timeTotal / ++timeCount;
		if (!surface_exists(surf)) surf = surface_create(width, height);
		buffer_set_surface(buffer, surf, 0);
	}
	static draw = function() {
		if (surface_exists(surf)) draw_surface(surf, 0, 0);
		draw_text(5, 5, string(fps)
			+ "\n" + string(time/1000) + "ms avg"
			+ "\n" + string(width) + "x" + string(height)
		);
	}
}