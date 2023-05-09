/// @description Insert description here
// You can write your code in this editor
x+=hspd;
y+=vspd;
t++;

if vspd < 4 vspd +=0.2
if t = 31
{
    t = 0;   
}

if t mod 5 = 0
{
    if hspd > 0 image_angle-=90;
    if hspd < 0 image_angle+=90;
}


if  place_meeting(x,y+vspd,obj_block) && t > 3
{
    vspd = -vspd/2;  
    hspd = hspd/2;
}

if place_meeting(x+1,y,obj_block) && t > 3
{
    hspd = -hspd/2;   
}

if place_meeting(x-1,y,obj_block) && t > 3
{
    hspd = -abs(hspd/2);   
}



if place_meeting(x,y+4,obj_block) && fade = 0 && t > 3
{
    fade = 1   
}

if fade = 1
{
    image_speed = 0.5;   
}