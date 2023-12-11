/// @description Insert description here
// You can write your code in this editor

if instance_exists(obj_end_sam){
    if obj_end_sam.x < x image_xscale = -1 else image_xscale = 1
}

switch(state){
    case 1:
        t++;
        switch(t){
            case 1: 
                sprite_index = spr_ending_petro_anim;
                image_speed = 0;
                image_index = 0;
                break;
            case 5:   image_index = 1;break;
            case 50:  image_index = 2;fnc_snd_play_onetime(snd_end_petro1);break;
            case 51:  image_index = 3;break;
            case 150: image_index = 4;fnc_snd_play_onetime(snd_end_petro1);break;
            case 155: image_index = 5;break;
            case 200: image_index = 6;
                with(obj_end_sam){
                    sprite_index = spr_player_petro_interaction;
                    image_index = 0;
                    image_speed = 0;
                }
                break;
            case 210: image_index = 5;break;
            case 220: image_index = 6;break;
            case 230: image_index = 5;break;
            case 235: image_index = 6;break;
            case 240: image_index = 5;break;
            case 245: image_index = 6;break;
            case 250: image_index = 7;
                with(obj_end_sam){
                    image_index = 1;
                }
                break;
            case 255: image_index = 8;
                fnc_snd_play_onetime(snd_end_petro2);
                instance_create_depth(x-40,y-36,depth-1000,obj_sfx_player_dead_big);
                with(obj_end_sam){
                    image_index = 2;
                }
                break;
            case 350: 
                with(obj_end_sam){
                    sprite_index = spr_player_idle;
                    image_speed = 1;
                }
                sprite_index = spr_ending_petro_idle;
                image_speed = 1;
                state = 2;
                t = 0;
                obj_ending.step+=0.5;
                break;
        }
        
        
        
        break;
}









