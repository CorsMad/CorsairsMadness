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
            instance_create_depth(x,y,0,obj_txt_DI_p6_end_merch1)
        }
        break;
    case 2:
        t++;
        if t = 10 {
            t = 0;
            instance_create_depth(x,y,0,obj_txt_DI_p4_end_sully);
            state = 3;
        }
        break;
    case 4:
        t++;
        if t = 10{
            t = 0;
            state = 5;
            instance_create_depth(x,y,0,obj_txt_DI_p6_end_merch2);
        }
        break;
    case 6:
        t++;
        if t = 30{
            t = 0;
            instance_create_depth(330,87,-1,obj_ctscDI_ct_p6end);
            state = 10;
        }
        break;
    case 10: // уход
        x+=2;
        if x > room_width+32 {
            instance_destroy()   
        }
        break;
}







