/// @description Insert description here
// You can write your code in this editor



switch(state){
	case 0: // arrive
		x+=4;
		if x>= 128{
			x = 128;
			state = 1;
			sprite_index = spr_player_idle;
			instance_create_depth(0,0,-1,obj_player_selector);
			instance_create_depth(0,0,0,obj_enemy_spawner_lvl_1);
		}
		break;
	case 5: 
		x+=4;
        sprite_index = spr_player_run;
		break;

}






