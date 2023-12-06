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
            case 5: image_index = 1;break;
            case 50: image_index = 2;break;
            case 51: image_index = 3;break;
            case 150: image_index = 4;break;
            case 155: image_index = 5;break;
            case 250: image_index = 6;break;
            case 260: image_index = 5;break;
            case 270: image_index = 6;break;
            case 280: image_index = 5;break;
            case 285: image_index = 6;break;
            case 290: image_index = 5;break;
            case 295: image_index = 6;break;
            case 300: image_index = 7;break;
            case 305: image_index = 8;break;
            case 400: 
                sprite_index = spr_ending_petro_idle;
                image_speed = 1;
                state = 2;
                t = 0;
                obj_ending.step+=0.5;
                break;
        }
        
        
        
        break;
}









