/// @description Insert description here
// You can write your code in this editor
if place_meeting(x,y,obj_hitbox_mask) || place_meeting(x,y,obj_hitbox_mask_dash)
{
    fnc_snd_play_over(snd_vase_destruct);
    instance_destroy();
    fnc_hp_after_destroy_vase(15,45);
    instance_create_depth(x,y-10,depth,obj_sfx3);
    instance_create_depth(x,y-26,depth,obj_sfx3);
    instance_create_depth(x,y,depth,obj_vase1_p1);
    instance_create_depth(x,y,depth,obj_vase1_p2);
    instance_create_depth(x,y,depth,obj_vase1_p3);
    
    global.vase_tutor2_r2_2 = 0;
}

