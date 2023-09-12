t++;
if t mod 10 == 0
{
	instance_create_depth(x+random_range(-28,28),y+random_range(-28,+12),depth-1,obj_sfx_explosion_bomb);
    fnc_snd_play_over(snd_boss_expl);
}

if t mod 5 == 0
{    
	instance_create_depth(x+random_range(-28,28),y+random_range(-28,+12),depth-1,obj_sfx2);
}

switch(t){
	case 60:
	sprite_index = spr_boat_boss_shadow_tent_arrive;
	image_index = 6;
		break;
	case 65: image_index = 5;break;
	case 70: image_index = 4;break;
	case 75: image_index = 3;break;
	case 80: image_index = 2;break;
	case 85: image_index = 1;break;
	case 90: image_index = 0;break;
	case 95: instance_destroy();break;
}
