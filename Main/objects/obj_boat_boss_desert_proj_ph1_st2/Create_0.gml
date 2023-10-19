/// @description Insert description here
// You can write your code in this editor
image_alpha = 0.2;
state = 0;
t = 0;
t1 = 0;
fnc_snd_play_onetime(snd_enemy_desert_boat_charge);

var e1 = instance_create_depth(x,y,depth-50,choose(obj_sfx_electricity_follow,obj_sfx_electricity2_follow))
    e1.fol = id;
    e1.folx = random_range(-24,24);
    e1.foly = random_range(-24,24);
    e1.image_speed = 2;
    var e2 = instance_create_depth(x,y,depth-50,choose(obj_sfx_electricity_follow,obj_sfx_electricity2_follow))
    e2.fol = id;
    e2.folx = random_range(-24,24);
    e2.foly = random_range(-24,24);
    e2.image_speed = 2;