/// @description Insert description here
// You can write your code in this editor
x+=hspd;
y+=vspd;

if hspd > 0 && isOn = 1
{
	image_xscale = 1;
}
if hspd < 0 && isOn = 1
{
	image_xscale = -1;
} 

/*
if place_meeting(x,y,obj_block) && isOn = 1
{
	var i = instance_create_depth(x,y,-1,obj_skeleton_archer_arrow_dead);
	i.hspd = -(hspd/10)
	i.vspd = -2;
	instance_destroy();
}
*/