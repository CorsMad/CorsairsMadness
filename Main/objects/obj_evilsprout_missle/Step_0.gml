/// @description Insert description here
// You can write your code in this editor

x+=hspd;
y+=vspd;

if place_meeting(x,y+vspd,obj_block) || place_meeting(x+hspd,y,obj_block)
{
    hspd = 0;
    vspd = 0;
    instance_create_depth(x,y,depth,obj_sfx2);
    instance_destroy();
} else vspd+=0.2
