/// @description Insert description here
// You can write your code in this editor

if place_meeting(x+hspd,y,obj_block_slope)
{
    yplus = 0;
    while (place_meeting(x+hspd,y-yplus,obj_block_slope) && yplus <= abs(1*hspd)) yplus += 1;
    if place_meeting(x+hspd,y-yplus,obj_block_slope)
    {
        while (!place_meeting(x+sign(hspd),y,obj_block_slope)) x+=sign(hspd);
        hspd = 0;
    }
    else
    {
        y -= yplus
    }
}
x += hspd;

// Downward slopes
if !place_meeting(x,y,obj_block_slope) && vspd >= 0 && place_meeting(x,y+2+abs(hspd),obj_block_slope)
{while(!place_meeting(x,y+1,obj_block_slope)) {y += 1;}}

