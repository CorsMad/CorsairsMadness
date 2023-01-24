/// @description Insert description here
// You can write your code in this editor
if isOn = 1
{
    var def = instance_place(x,y,obj_abil_arbalet_proj)
    if def!= noone
    {
        def.isDead = 1;
        sprite_index = spr_abil_magicalbow_rope_break;
        image_index = 0;
        if instance_exists(obj_platform_3_v_e_rope_d1r14_2)
        {
            obj_platform_3_v_e_rope_d1r14_2.isEnabled = 1;
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