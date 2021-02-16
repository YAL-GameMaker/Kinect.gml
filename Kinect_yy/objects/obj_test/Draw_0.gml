draw_set_font(fnt_test);
draw_set_color(c_white);
if (surface_exists(surf)) draw_surface(surf, 0, 0);
draw_text(5, 5, string(fps)
	+ "\n" + string(width) + "x" + string(height)
);