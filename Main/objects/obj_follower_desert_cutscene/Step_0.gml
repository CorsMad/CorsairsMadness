/// @description Insert description here
// You can write your code in this editor

switch(state)
{
    case 0://anim появления
        t++;
        switch(t)
        {
            case 1: image_index = 0;break;  
            case 5: image_index = 1;break;
            case 10:image_index = 2;break;
            case 15:image_index = 3;break;
            case 20:image_index = 4;break;
            case 25:image_index = 5;break;
            case 30:image_index = 6;break;
            case 35:image_index = 7;break;
            //case 40:image_index = 8;break;
            case 40:
                t = 0;
                state =0.5;
                obj_cutscene_dp1_r16.state = 2;
                obj_cutscene_dp1_r16.t = 0;
                break;
        }
        break;
    case 0.5:
        sprite_index = spr_boss_dp_idle;      
        image_speed = 1;
        break;
    case 1: //anim смеха
        t++;
        if t = 50
        {
            t= 0;
            state = 1.5;
        }
        break;
    case 2: // anim выхода
        t++;
        image_speed = 0;
        switch(t)
        {
            case 1:
                fnc_snd_play_onetime(snd_desert_follower_tp);
                sprite_index = spr_boss_dp_appear;
                image_index = 7;
                break;
            case 5:image_index = 6;break;
            case 10:image_index = 5;break;
            case 15:image_index = 4;break;
            case 20:image_index = 3;break;
            case 25:image_index = 2;break;
            case 30:image_index = 1;break;
            case 35:image_index = 0;break;
        }
        if t = 40
        {
            instance_destroy();
            instance_destroy(obj_boss_dp_mold_create);
        }
        break;
}




