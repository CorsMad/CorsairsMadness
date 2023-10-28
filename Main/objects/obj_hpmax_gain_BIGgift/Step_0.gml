/// @description Insert description here
// You can write your code in this editor


	if place_meeting(x,y,obj_Player)
	{
        fnc_snd_play_over(snd_player_hpmana_gain);
		global.hp_add += 1;
        global.hp_max += 1;
		global.mana_add += 1;
        global.mana_max += 1;
        
        global.hp = global.hp_max;
        global.mana = global.mana_max;
        scr_save_progress();
		instance_destroy();	
	}
