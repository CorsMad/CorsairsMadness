/// @description Insert description here
// You can write your code in this editor
vspd = -5;
//dis = round(x-obj_Player.x);
dis = round(x-obj_Player.x);
if dis < 180 && dis > -180 
{
	spd = (dis/70);
} else 
{
    if obj_Player.x > x 
    {
        spd = -3;   
    } else spd = 3;
}

/*
dis = point_distance(x,y,obj_Player.x,obj_Player.y);
*/

