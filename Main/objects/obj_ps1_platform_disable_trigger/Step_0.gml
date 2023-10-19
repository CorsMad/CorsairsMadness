/// @description Insert description here
// You can write your code in this editor

if place_meeting(x,y,obj_hitbox_mask) && isOn = 0
{
    fnc_snd_play_onetime(snd_bomb_selektor);
    fnc_snd_play_onetime(snd_ps_block_destr);
    instance_create_depth(x,y,depth-1,obj_sfx_weapon_slash);
    isOn = 1;
    if instance_exists(obj_ps1_block_dis)
    {
        obj_ps1_block_dis.isOn = 0;   
    }
}

image_index = isOn;


