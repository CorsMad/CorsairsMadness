/// @description Insert description here
// You can write your code in this editor
t++;
if t = 1
{
    hspeed = lengthdir_x(4,point_direction(x,y,dir_x,dir_y));
    vspeed = lengthdir_y(4,point_direction(x,y,dir_x,dir_y));   
}

if place_meeting(x,y,obj_player_boat_hitbox) && obj_Player_boat.hit_cd = 0
		    {
		        obj_Player_boat.hit_cd = 1; 
		        global.hp-=1;
		    }