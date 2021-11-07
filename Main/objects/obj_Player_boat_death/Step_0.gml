/// @description Insert description here
// You can write your code in this editor
y+=vspd;
vspd = lerp(vspd,0,0.05);
death_timer++;
switch(death_timer)
	{
		case 1:     instance_create_depth(x,y-24,-1,obj_sfx_player_dead_boat_emitter);
				    audio_play_sound(snd_player_death,0,false);
                    sprite_index = spr_player_hurt;
				    break;
		case 55:    sprite_index = spr_player_death;break;
		case 80:    image_alpha = 0;break;
		case 180:   instance_create_depth(x,y,0,obj_room_transition_black_screen_boat); break;
	}