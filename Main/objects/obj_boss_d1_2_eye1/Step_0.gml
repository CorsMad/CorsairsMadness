/// @description Insert description here
// You can write your code in this editor

if instance_exists(fol)
{

    if isOn = 1
    {
        var def = instance_place(x,y,obj_abil_arbalet_proj)
        if def!= noone
        {
            fnc_snd_play_onetime(snd_follower_getlight);
            def.isDead = 1;
            instance_create_depth(x,y,depth-1,obj_sfx2);
            isOn = 0;
			if instance_exists(obj_boss_d1_2)
			{
				obj_boss_d1_2.state = 2;
				obj_boss_d1_2.t = 0;
			}
			if instance_exists(obj_boss_de_2)
			{
				 obj_boss_de_2.state = 2;
				 obj_boss_de_2.t = 0;	
			}
           
            fol.image_index = 0;
            fol.sprite_index = spr_boss1_d1_weakspot;
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