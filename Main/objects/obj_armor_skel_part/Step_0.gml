/// @description Insert description here
// You can write your code in this editor
x+=hspd;
y+=vspd;
vspd +=0.2;

t++;
if t = 10
{
    if hspd > 0 image_angle+=90;
    if hspd < 0 image_angle-=90;
    t = 0;
}

if place_meeting(x,y,obj_block)
{
    instance_destroy();
    instance_create_depth(x,y,depth-1,obj_sfx_dust_expl_small);
}

