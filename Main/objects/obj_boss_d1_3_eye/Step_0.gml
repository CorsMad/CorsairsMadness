/// @description Insert description here
// You can write your code in this editor

if instance_exists(fol)
{

    if isOn = 1
    {
        var def = instance_place(x,y,obj_abil_arbalet_proj)
        if def!= noone
        {
            def.isDead = 1;
            instance_create_depth(x,y,depth-1,obj_sfx2);
            isOn = 0;
            obj_boss_d1_3.state = 2;
            obj_boss_d1_3.t = 0;
            fol.image_index = 0;
            fol.sprite_index = spr_boss1_d1_weakspot_relocate;
        }
    }


    //ANIM
    {
        if isOn = 0
        {
            image_index = 0;   
        }
    
        if isOn = 1
        {
            image_index = 2;
        }
    }
} else instance_destroy();