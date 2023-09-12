/// @description Insert description here
// You can write your code in this editor

if place_meeting(x,y,obj_player_boat_hitbox) && obj_Player_boat.hit_cd = 0
		    {
		        obj_Player_boat.hit_cd = 1; 
		        global.hp-=1;
		    }