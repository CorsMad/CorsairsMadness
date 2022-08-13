/// @description Insert description here
// You can write your code in this editor
if isOn = 1
{
    if place_meeting(x,y,obj_abil_arbalet_proj)
    {
        isOn = 0;
        sprite_index = spr_abil_magicalbow_target_death;
        image_index = 0;
        instance_create_depth(x,y,depth-1,obj_sfx2);
        if instance_exists(obj_platform_3_h_e_target)
        {
            obj_platform_3_h_e_target.isEnabled = 1;
        }
        if instance_exists(obj_abil_arbalet_proj)
        {
            instance_destroy(obj_abil_arbalet_proj);   
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