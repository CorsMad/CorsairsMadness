/// @description Insert description here
// You can write your code in this editor


if place_meeting(x,y,obj_hitbox) && hit_cd = 0{  
    hit_cd =1;
    instance_create_depth(x,y-38,depth-1,obj_sfx3);
    fnc_snd_play_onetime(choose(snd_flute_1,snd_flute_2,snd_flute_3))
    fnc_snd_play_onetime(snd_skate_human);
    image_index = 1;
    if instance_exists(obj_lavacryst_controller) obj_lavacryst_controller.count+=1;
}








