/// @description Insert description here
// You can write your code in this editor
Orbit = 60; // Orbit distance

Speed = sign(obj_Player.image_xscale)*2; // Orbital speed
Center_X = obj_Player.x; // x of orbital center
Center_Y = obj_Player.y-32; // y of orbital center


a = 0;

// Current orbital angle
if obj_Player.image_xscale = 1 
{
	Angle = 90; 
} else Angle = 0;

//image_speed = 0.2*obj_Player.image_xscale;
//image_alpha = 0;