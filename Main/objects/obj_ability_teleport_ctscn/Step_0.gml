/// @description Insert description here
// You can write your code in this editor
if place_meeting(x,y,obj_cutscene_DI_player_p_r3_presave)
{	
    fnc_snd_play_over(snd_ability_gain);
    instance_create_depth(x-12,y-12,depth-1,obj_sfx2);
    instance_create_depth(x+12,y-12,depth-1,obj_sfx2);
    instance_create_depth(x-12,y+12,depth-1,obj_sfx2);
    instance_create_depth(x+12,y+12,depth-1,obj_sfx2);
    obj_cutscene_DI_player_p_r3_presave.state = 4;
    var d = instance_create_depth(x,y,depth-1,obj_ctscDI_merch1_ring);
    d.state = 1;
    d.hspd = -2;
    d.vspd = -2;
    instance_destroy();     
}




y = y + cos(b)/2;
	b+= 0.05;