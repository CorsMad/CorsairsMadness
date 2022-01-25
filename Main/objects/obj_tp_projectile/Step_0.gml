/// @description Insert description here
// You can write your code in this editor

if state = 0
{
    t++;
    x+= hspd;
    y+= vspd;
    vspd = lerp(vspd,+2,0.05);
    if hspd > 0
    {
        hspd = lerp(hspd,0,l);
        if t = 40
        {
         state = 1;   
        }
    }
    
    if hspd < 0
    {
        hspd = lerp(hspd,0,l);
        if t = 40
        {
         state = 1;   
        }
    }
}

if state = 1
{
    depth = obj_Player.depth-1;
    var dir = point_direction(x,y,obj_Player.x,obj_Player.y-32);
	spd+=0.5;
	hspeed = lengthdir_x(spd,dir);
    vspeed = lengthdir_y(spd,dir);
}