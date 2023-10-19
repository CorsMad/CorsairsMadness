/// @description Insert description here
// You can write your code in this editor
if isOn = 1
{
    var def = instance_place(x,y,obj_abil_arbalet_proj)
    if def!= noone
    {
        fnc_snd_play_over(snd_target_destroy);
        def.isDead = 1;
        isOn = 0;
        sprite_index = spr_abil_magicalbow_target_death;
        image_index = 0;
        instance_create_depth(x,y,depth-1,obj_sfx2);
        if instance_exists(obj_platform_3_h_e_target_d1r5_2)
        {
            obj_platform_3_h_e_target_d1r5_2.isEnabled = 1;
        }        
    }
}

if isOn = 0
{
    image_speed = 1;
    image_alpha -= 0.05;
    if (image_index > image_number - 1) {
    instance_destroy();
    }
}