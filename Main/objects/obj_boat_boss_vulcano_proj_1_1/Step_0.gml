/// @description Insert description here
// You can write your code in this editor
switch(state)
{
	case 0:		
		y+=vspd;
		if y < -32 {
			vspd = 0;			
			state = 1;
            var shadow = instance_create_depth(x,dest_point,depth,obj_boat_boss_vulcano_shadow);
            shadow.fol = id;
            if instance_exists(obj_Player_boat)
            {
                y=obj_Player_boat.y-272;
                x=obj_Player_boat.x;
            }
		}
		break;
	case 1:
		t++;
		if t = 100 {
			t = 0;
			dest_point = y+272;
			vspd = 4;
			state = 2;
            
		}
		break;
	case 2:
        
		if abs(y-dest_point)<24 {
			if place_meeting(x,y,obj_player_boat_hitbox) && obj_Player_boat.hit_cd = 0
		    {
                fnc_snd_play_onetime(snd_item_bomb_explosion);
		        obj_Player_boat.hit_cd = 1; 
		        global.hp-=1;
		    }	
		}
		
		
		
		y+=vspd;
		if y >= dest_point {
            fnc_snd_play_onetime(snd_item_bomb_explosion);
			instance_create_depth(x,y,depth-1,obj_boat_boss_vulcano_proj_1_1_expl);
			instance_destroy();	
		}
		break;
}