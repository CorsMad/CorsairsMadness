 /// @description Insert description here
// You can write your code in this editor
Orbit = 90; // Orbit distance

Speed = sign(obj_Player.image_xscale)*5; // Orbital speed
Center_X = obj_Player.x; // x of orbital center
Center_Y = obj_Player.y-16; // y of orbital center

isDead = 0;
a = 0;

// Current orbital angle
if obj_Player.image_xscale = 1 
{
	Angle = 180; 
	instance_create_depth(x-60,y,-1,obj_sfx1);
} else  {
			Angle = 0;
			instance_create_depth(x+60,y,-1,obj_sfx1);
		}

//image_speed = 0.2*obj_Player.image_xscale;
//image_alpha = 0;



image_xscale = 1.25;
image_yscale = 1.25;