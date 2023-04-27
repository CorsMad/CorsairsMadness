/// @description Insert description here
// You can write your code in this editor

x += hspd;
y += vspd;

if vspd < 2 vspd+=0.2;

t++;

if t mod 5 = 0
{
    if hspd > 0 image_angle+=90; else image_angle -=90;   
}

if y > room_height instance_destroy();

if t > 10 && place_meeting(x,y,obj_block) instance_destroy();