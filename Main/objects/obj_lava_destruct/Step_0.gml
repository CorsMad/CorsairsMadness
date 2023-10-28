/// @description Insert description here
// You can write your code in this editor


if place_meeting(x,y,obj_hitbox) || place_meeting(x,y,obj_item_boomerang){
    fnc_snd_play_onetime(snd_chest_destruct);
    instance_create_depth(x,y-16,depth-1,obj_sfx_dust_expl_small);
    instance_create_depth(x-8,y,depth-1,obj_sfx_dust_expl_small);
    instance_create_depth(x+8,y,depth-1,obj_sfx_dust_expl_small);
    for (var i=0; i < 6; i++) {
        instance_create_depth(x,y-16,depth,obj_lava_destruct_part);
    }
    if chanse < 8 {
            var mon = instance_create_depth(x,y-5,depth-1,choose(obj_money1,obj_money10));
            mon.hspd = 0;
        }
    instance_destroy();
}







