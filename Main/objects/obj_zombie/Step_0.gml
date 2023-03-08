/// @description Insert description here
// You can write your code in this editor

if (spd > 0 && !place_meeting(x+spd,y,obj_block)) || (spd < 0 && !place_meeting(x-spd,y,obj_block))
{
    x+=spd;   
}


t++;
if t > 25 && t < 60
{
    image_speed = 1;
    spd = 1*sign(image_xscale);
} else spd = 0;
