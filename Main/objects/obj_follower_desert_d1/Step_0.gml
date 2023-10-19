/// @description Insert description here
// You can write your code in this editor

/*
0 -  появление
1 - ожидание
2 - атака
3 - удаление
*/
x = camera_get_view_x(view_camera[0])+32;
if dead = 0
{
    switch(state)
    {
    case 0:
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
            case 40:
                t = 0;
                state =1;
                break;
        }
        if t = 50
        {
            t = 0;
            state = 1;
        }
        break;
    case 1:
        
        sprite_index = spr_boss_dp_idle;
        image_speed = 1;
        y = lerp(y,obj_Player.y-24,0.05);
        t++;
        if t = 100
        {
            state = 2;
            t = 0;
        }
        break;
    case 2:
        t++;
        image_speed = 0;
        sprite_index = spr_boss_dp_lasershot_usual;
        switch(t)
        {
            case 1:image_index = 0;break;
            case 5:image_index = 1;break;
            case 10:image_index = 2;break;
            case 15:image_index = 3;break;
            case 20:image_index = 4;break;
            case 25:image_index = 5;break;
            case 30:image_index = 6;break;
            case 35:image_index = 7;break;
            case 40:image_index = 8;break;
            case 45:image_index = 7;break;
            case 50:image_index = 8;break;
            case 55:image_index = 7;break;
            case 60:image_index = 8;break;
            case 65:image_index = 9;break;
            case 70:
                image_index = 10;
                instance_create_depth(x+18,y,depth-1,obj_follower_desert_d1_proj);
                break;
            case 75:image_index = 10;break;
            case 80:image_index = 11;break;
            case 85:image_index = 12;break;
            case 90:image_index = 13;break;
            case 95:
                t =0 ;
                state =1;
                break;
        }
        break;
    case 3:
        t++;
        image_speed = 0;
        switch(t)
        {
            case 1:
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
            case 40:
            instance_destroy(obj_boss_dp_mold_create);
                instance_destroy();
                break;
        }
        break;
}
}

if dead = 1 
{
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
        case 40:
        instance_destroy(obj_boss_dp_mold_create);
            instance_destroy();
            break;
    }
     
}