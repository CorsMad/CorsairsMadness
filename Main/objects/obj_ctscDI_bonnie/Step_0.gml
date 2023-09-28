/// @description Insert description here
// You can write your code in this editor


switch(state){
    case 0: // появление
        t++;
        switch(t){
            case 5:image_index = 1;break;
            case 10:image_index = 2;break;
            case 15:image_index = 3;break;
            case 20:image_index = 4;break;
            case 50:
                instance_create_depth(384,208,-10,obj_ctscDI_bonnie_target);
                t = 0;
                state = 1;
                instance_create_depth(x,y,0,obj_txt_DI_p10_end_bonnie);
                break;
        }
        break;
    case 1: // разговор
        
        break;
    case 2: // выстрел
        t++;
        switch(t){
            case 50: // выстрел
                image_index = 5;
                instance_create_depth(x+29,y-10,-2,obj_ctscDI_bonnie_trace);
                fnc_snd_play_onetime(snd_cannon_fire);
                var sm = instance_create_depth(x-32,y-10,-3,obj_cannon_level_smoke);
                sm.image_angle = 270;
                instance_destroy(obj_ctscDI_bonnie_target);
                break;
            case 60: image_index = 4;break;
            case 100:image_index = 3;break;
            case 105:image_index = 2;break;
            case 110:image_index = 1;break;
            case 115:
            instance_create_depth(x,y,0,obj_txt_DI_p10_end_merch2);
            instance_destroy();
            break;
      
        }
        break;
    case 3: // конец
        break;
}







