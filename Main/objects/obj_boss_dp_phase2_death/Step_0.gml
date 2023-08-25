/// @description Insert description here
// You can write your code in this editor

t++;

if (t mod 10 = 0) && t < 100
{
        fnc_snd_play_onetime(snd_follower_blood);
    
        var gbh1 = instance_create_depth(x-8*sign(image_xscale),y,depth+1,obj_molded_dark_blood);
        var gbh2 = instance_create_depth(x-8*sign(image_xscale),y,depth+1,obj_molded_dark_blood);
        var gbh3 = instance_create_depth(x-8*sign(image_xscale),y,depth+1,obj_molded_dark_blood);
        var gbh4 = instance_create_depth(x-8*sign(image_xscale),y,depth+1,obj_molded_dark_blood);
        
        gbh1.hspd = choose(-1,1)*choose(0.2,0.25,0.3,0.35,0.7,0.75,0.7,0.75,);
        gbh1.vspd = choose(-3,-2.75);  
        gbh2.hspd = choose(-1,1)*choose(0.85,0.9,1,1.25,1.65,1.7,1.75,1.8);
        gbh2.vspd = choose(-2.5,-2.25);
        gbh3.hspd = choose(-1,1)*choose(0.2,0.25,0.3,0.35,0.7,0.75,0.7,0.75);
        gbh3.vspd = choose(-3,-2.75);  
        gbh4.hspd = choose(-1,1)*choose(0.85,0.9,1,1.25,1.65,1.7,1.75,1.8);
        gbh4.vspd = choose(-2.5,-2.25);   
}



switch(t)
{
    case 75:
        sprite_index = spr_boss_dp_appear;
        image_index = 7;
        image_speed = 0;
        break;
    case 80:image_index = 6;break;
    case 85:image_index = 5;break;
    case 90:image_index = 4;break;
    case 95:image_index = 3;break;
    case 100:image_index = 2;break;
    case 105:image_index = 1;break;
    case 110:image_index = 0;break;
    case 115:
        sprite_index = spr_blank;break;
    case 150:
        
        instance_create_depth(80,176,depth,obj_boss_dp_phase3);
        instance_destroy(obj_boss_dp_mold_create);
        instance_destroy();
        break;
}

