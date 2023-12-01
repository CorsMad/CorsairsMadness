/// @description Insert description here
// You can write your code in this editor


switch(state){
    case 1:
        t++;
        if t = 100{
            t = 0;
            state = 2;
            vspd = -6;
            sprite_index = spr_player_win;
            image_speed = 0;
            image_index = 0;
        }
        break;
    case 2:
        y+=vspd;
        
        if vspd < 0 vspd+=0.2; else state = 3;
        break;
    case 3:
        t++;
        if t = 50 {
            image_index = 1; 
            instance_create_depth(x-12,y-42,depth-1,obj_sfx_checkpoint_cretor_big);
            instance_create_depth(x-12,y-42,depth-1,obj_sfx3);
        }
        
        if t = 120 {
            instance_create_depth(0,0,depth-100000000,obj_room_transition_black_screen_ENDING)   
        }
        break;
    case 4:
        break;
}











