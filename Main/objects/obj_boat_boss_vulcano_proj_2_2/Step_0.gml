/// @description Insert description here
// You can write your code in this editor
x+=hspd;
y+=vspd;
t++;
if t= 100
{
    instance_create_depth(x,y,depth-1,obj_sfx3)
	instance_destroy();	
}

if place_meeting(x,y,obj_player_boat_hitbox) && obj_Player_boat.hit_cd = 0
		    {
		        obj_Player_boat.hit_cd = 1; 
		        global.hp-=1;
		    }