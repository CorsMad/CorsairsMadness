/// @description Insert description here
// You can write your code in this editor

vspd = -3//1-5;
//dis = round(x-obj_Player.x);
dis = round(x-obj_Player.x);
if dis < 180 && dis > -180 
{
	//spd = (dis/70);
	spd = (dis/100);
} else 
{
    if obj_Player.x > x 
    {
        spd = -1.5;   
    } else spd = 1.5;
}