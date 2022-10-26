/// @description Insert description here
// You can write your code in this editor

x+=hspd;
y+=vspd;

if place_meeting(x,y,obj_block)
{
    instance_create_depth(x,y,depth,obj_sfx2);
    instance_destroy();
}
