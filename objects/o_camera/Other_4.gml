/// @desc Resolution Scaling
// Turns on views and sets the first one to be visible
view_enabled = true;
view_set_visible(0,true);
// Scales application surface but not the view
surface_resize(application_surface,view_width,view_height);
camera_set_view_size(cam,unscaledwidth,unscaledheight);
// We want the gui to include the whole game window
display_set_gui_maximize();

// Basic code to have the camera be centered on the player
if(instance_exists(o_player)) camera_set_view_pos(cam,
	clamp(o_player.x-(unscaledwidth/2),0,room_width-unscaledwidth),
	clamp(o_player.y-(unscaledheight/2),0,room_height-unscaledheight));
else camera_set_view_pos(cam,0,0);