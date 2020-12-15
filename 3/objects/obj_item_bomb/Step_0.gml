/// @description Insert description here
// You can write your code in this editor
// Orbital motion
Angle -= Speed;
if(Angle >= 360) Angle += 360;

// Update position

x = lengthdir_x(Orbit, Angle) + Center_X;
y = lengthdir_y(Orbit, Angle) + Center_Y;


a+=1;

if a = 180 
{    
    mask_index = spr_blank;
	Speed = 0;
	instance_create_depth(x,y,-1,obj_sfx_explosion_bomb);
}
if a = 190
{
	instance_destroy();	
}

