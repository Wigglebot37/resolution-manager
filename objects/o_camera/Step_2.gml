/// @desc Fullscreen
// Pressing F4 triggers fullscreen on and off
if(keyboard_check_pressed(vk_f4)) {
	var full = window_get_fullscreen();
	// In order to prepare for making the window fullscreen,
	// we want the scalar to be at its max
	if(!full) scalar = maxscalar;
	else {
		// If the game is already fullscreen, we set it to revert
		// in one frame and reset the scalar to max-1
		alarm[1] = 1;
		scalar = clamp(maxscalar-1,1,maxscalar);
	}
	// This is necessary because we changed the scalar
	view_width = unscaledwidth*scalar;
	view_height = unscaledheight*scalar;
	surface_resize(application_surface,view_width,view_height);
	
	if(!full) {
		var dispwidth=display_get_width(),dispheight=display_get_height();
		// We want to prep the game window for fullscreen before switching
		// so maximizing window and gui is needed
		window_set_size(dispwidth,dispheight);
		display_set_gui_maximize();
		// The offset for the black bars is created based on the differences
		// in display size and scaled game size
		woff = (dispwidth-view_width)/2;
		hoff = (dispheight-view_height)/2;
		// Go to fullscreen in one frame
		alarm[1] = 1;
	} else {
		// Resets window size and app surface offsets
		window_set_size(view_width,view_height);
		woff = 0;
		hoff = 0;
		// Centers window in one frame
		alarm[2] = 1;
	}
}

// Basic code to have the camera follow the player
if(instance_exists(o_player)) camera_set_view_pos(cam,
	clamp(o_player.x-(unscaledwidth/2),0,room_width-unscaledwidth),
	clamp(o_player.y-(unscaledheight/2),0,room_height-unscaledheight));