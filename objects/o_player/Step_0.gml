/// @desc Player Controls
// Handles WASD inputs from player as a +1, 0, or -1 in horizontal and vertical
horzspeed = keyboard_check(ord("D")) - keyboard_check(ord("A"));
vertspeed = keyboard_check(ord("S")) - keyboard_check(ord("W"));

if(horzspeed == 0 && vertspeed == 0) {
	// If the player isn't moving, stop animation
	image_speed = 0;
	// Reset to idle sprite
	if(image_index < 4) image_index = 0;
	else image_index = 4;
} else {
	// If the player is now moving, resume animation
	if(image_speed == 0) image_speed = 1;
	// Set left or right animation cycling for slime
	if(horzspeed > 0 && image_index < 4) image_index = 4;
	else if(horzspeed < 0 && image_index > 3) image_index = 0;
}

// Move player based on speed
x += horzspeed * movespeed;
y += vertspeed * movespeed;