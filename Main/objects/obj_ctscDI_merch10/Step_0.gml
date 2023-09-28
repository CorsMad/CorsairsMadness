/// @description Insert description here
// You can write your code in this editor


switch(state){
    case 0:
        break;
    case 1:
        t++;
        if t = 50{
            t = 0;
            state = 1.5;
            instance_create_depth(x,y,0,obj_txt_DI_p10_end_merch1)
        }
        break;
    case 2:
        t++;
        if t = 10 {
            t = 0;
            instance_create_depth(112,240,0,obj_ctscDI_bonnie);
            state = 3;
        }
        break;
    case 4:
        t++;
        if t = 10{
            t = 0;
            state = 5;
            instance_create_depth(x,y,0,obj_txt_DI_p10_end_merch2);
        }
        break;
    case 6:
        t++;
        if t = 30{
            t = 0;
            state = 10;
        }
        break;
    case 10: // уход
        x+=2;
        if x > room_width+32 {
            obj_cutscene_DI_player_p_r10_end.state = 4;
            instance_destroy()   
        }
        break;
}







