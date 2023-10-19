/// @description Insert description here
// You can write your code in this editor
y+=2;
if y >= 256 
{    
    fnc_snd_play_onetime(snd_explosions_standart);
    var l = instance_create_depth(x,256,depth,obj_boss_d2_proj_down_wave);
    var r = instance_create_depth(x,256,depth,obj_boss_d2_proj_down_wave);
	instance_create_depth(x,y,depth-1,obj_sfx3)
	instance_create_depth(x,y,depth-1,obj_sfx4)
    l.hspd = -2;
    r.hspd = 3;
    instance_destroy();
}