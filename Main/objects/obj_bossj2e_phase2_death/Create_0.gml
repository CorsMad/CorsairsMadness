/// @description Insert description here
// You can write your code in this editor
t = 0;
if x <= room_width/2 hspd = -0.5; else hspd = 0.5;
var w = instance_create_depth(x,y,depth+1,obj_boss2_wings);
w.fol = id;
m = instance_create_depth(x,y,depth,obj_boss2j_death_mask);
m.fol = id;

instance_create_depth(x+random_range(-8,8),y+random_range(-16,-2),depth-1,obj_sfx_explosion);
instance_create_depth(x+random_range(-8,8),y+random_range(2,16),depth-1,obj_sfx_explosion);

instance_create_depth(x,y,depth-1,obj_hpmax_some_2mana_gain_gift);

fnc_snd_play_onetime(snd_boss2_scream);