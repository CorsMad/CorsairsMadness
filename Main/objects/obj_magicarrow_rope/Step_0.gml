/// @description Insert description here
// You can write your code in this editor
if isOn = 1
{
    if place_meeting(x,y,obj_abil_arbalet_proj)

    {
        isOn = 0;
        sprite_index = spr_abil_magicalbow_rope_break;
        image_index = 0;
        if instance_exists(obj_platform_3_v_e_rope)
        {
            obj_platform_3_v_e_rope.isEnabled = 1;
        }
        if instance_exists(obj_abil_arbalet_proj)
        {
            instance_destroy(obj_abil_arbalet_proj);   
        }
    }
}

if isOn = 0
{
    image_speed = 2;
    if (image_index > image_number - 1) {
    instance_destroy();
    }
}