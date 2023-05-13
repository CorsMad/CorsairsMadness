/// @description Insert description here
// You can write your code in this editor
#region image_angle
if hspd < 0
{
	image_angle = -50;
	image_xscale = -1;
}	else image_angle = 50;

#endregion

fnc_Collision(obj_boss1_block);
vspd +=0.1;
x+=hspd;
y+=vspd;

if hspd > 0 
{
	hspd -= 0.01;	
} else hspd += 0.01;




if place_meeting(x+hspd,y,obj_boss1_block) || place_meeting(x-hspd,y,obj_boss1_block)
{
	col_counts -=1;
	hspd = -hspd;
}

if place_meeting(x,y+vspd,obj_boss1_block)
{
	col_counts -=1;;
	vspd = -1;
}

if col_counts <= 0 
{
	instance_create_depth(x,y,depth-1,obj_sfx3);
	instance_destroy();
}