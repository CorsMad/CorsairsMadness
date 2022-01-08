/// @description Insert description here
// You can write your code in this editor

// Orbital motion
Angle -= Speed;
if(Angle >= 360) Angle += 360;

// Update position

x = lengthdir_x(Orbit, Angle) + Center_X;
y = lengthdir_y(Orbit, Angle) + Center_Y;

a+=1;

if a = 180 && isDead = 0
{   
	isDead = 1;
    mask_index = spr_blank;
	Speed = 0;
	instance_create_depth(x,y,-1,obj_sfx_explosion_bomb);
}

if place_meeting(x,y,obj_destructable_parent) && isDead = 0
{
	a = 180;
	isDead = 1;
    mask_index = spr_blank;
	Speed = 0;
	instance_create_depth(x,y,-1,obj_sfx_explosion_bomb);
	
}

if isDead = 1
{
    instance_create_depth(x,y,depth-1,obj_sfx_explosion_bomb);
    instance_destroy();
    var i1 = instance_create_depth(x,y,depth-1,obj_item_bomb3_part);
    var i2 = instance_create_depth(x,y,depth-1,obj_item_bomb3_part);
    i1.spd = -1;
    i2.spd = 1;
}


if a = 190
{
	instance_destroy();	
}
