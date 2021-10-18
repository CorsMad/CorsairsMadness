/// @description Insert description here
// You can write your code in this editor
x = x+hspd;
y = y+vspd;
vspd +=0.2;
//image_speed = 1*sign(hspd);
if vspd > 0
{
    t++;   
}

if t > 30
{
    instance_create_depth(x,y,0,obj_sfx_watersplash_pistol);
    instance_destroy();   
}