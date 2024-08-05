/// @desc Game Start
#macro cam view_camera[0]
persistent = true;

// Turns sprite into font
mapstring=" 0123456789AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz.!?,'()&:;/%#\"$*+-=<>[]^_{}|\\~";
globalvar fnt_pixel;
fnt_pixel=font_add_sprite_ext(sp_pixelfont,mapstring,true,1);
draw_set_font(fnt_pixel);

// Sets mouse cursor to custom sprite
window_set_cursor(cr_none);
cursor_sprite=sp_cursor;

var dispwidth=display_get_width(),dispheight=display_get_height();
// Disables automatic application surface drawing so we can offset it
application_surface_draw_enable(false);
// Needed for resolutions that will have black bars on all 4 sides
window_enable_borderless_fullscreen(true);

// See README file for info
unscaledwidth = 640;
unscaledheight = 360;

// Offset for application surface
woff = 0;
hoff = 0;
// Finds ratio of display to wanted resolution
wratio = dispwidth/unscaledwidth;
hratio = dispheight/unscaledheight;

// Finds the highest it can scale the wanted resolution
maxscalar = min(floor(wratio),floor(hratio));
// Sets the window scale to 1 less than the max, unless the max is 1
scalar = clamp(maxscalar-1,1,maxscalar);

// This scales up the resolution to be used by window and app surface
view_width = unscaledwidth*scalar;
view_height = unscaledheight*scalar;

// Sets the game window size to be scaled
window_set_size(view_width,view_height);
// Gives a 10 second timer for the game window to resize properly
// before transitioning to the next room
alarm[0] = 10;
// Resizing the window and centering it on the same frame cause issues
// so we delay it here by 1
alarm[2] = 1;