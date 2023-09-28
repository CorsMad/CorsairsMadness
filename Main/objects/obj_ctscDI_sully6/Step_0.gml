/// @description Insert description here
// You can write your code in this editor

if state > 1 fnc_Collision(obj_block);

switch(state){
    case 0:
        y+=vspd;
        vspd+=0.2;
        if vspd >=0 {
            vspd = 0;
            state = 1;
        }
        break;
    case 1:
        t++;
        switch(t){
            case 10: instance_create_depth(x+16,y-40,-1,obj_ctscDI_sully6_bomb);
                image_index = 1;
                break;
            case 15: image_index = 0;break;
            case 20: instance_create_depth(x+16,y-40,-1,obj_ctscDI_sully6_bomb);
                image_index = 1;
                break;
            case 25: image_index = 0;break;
            case 30: instance_create_depth(x+16,y-40,-1,obj_ctscDI_sully6_bomb);
                image_index = 1;
                break;
            case 35: image_index = 0;break;
            case 40: instance_create_depth(x+16,y-40,-1,obj_ctscDI_sully6_bomb);
                image_index = 1;
                break;
            case 45: image_index = 0;break;
            case 50: instance_create_depth(x+16,y-40,-1,obj_ctscDI_sully6_bomb);
                image_index = 1;
                break;
            case 60: 
                t = 0;
                state = 2;
                break;     
        }
        break;
    case 2:
    sprite_index = spr_npc_sully_jump;
    image_index = 1;
        vspd+=0.2;
        if place_meeting(x,y+1,obj_block){
            vspd = 0;
            state = 3;
            t = 0;
            image_index = 2;
        }
        break;
    case 3:
        t++;
        switch(t){
            case 5: sprite_index = spr_npc_sully_press;image_index = 0;break;
            case 35: image_index = 1;break;
            case 40: 
                image_index = 2;
                if instance_exists(obj_ctscDI_sully6_bomb) obj_ctscDI_sully6_bomb.state = 2;
                break;
            case 45: image_index = 3;break;
            case 50: image_index = 4;break;
            case 55: sprite_index = spr_npc_sully_idle_d;image_speed = 1;break;
            case 100:
                instance_create_depth(0,0,0,obj_txt_DI_p4_end_sully2)
                t =0 ;
                state = 4;
                break;
              
        }
}