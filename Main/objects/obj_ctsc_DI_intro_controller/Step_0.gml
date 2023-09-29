/// @description Insert description here
// You can write your code in this editor


switch(state){
    case 1:t++;
        if t = 50{
            t= 0;
            state = 0;
            instance_create_depth(x,y,0,obj_txt_DI_intro_merch1);
        }
        break;
    case 2:t++;
        if t = 100{
            instance_create_depth(394,167,-1,obj_ctscDI_comt1)
        }
        if t = 200{
            t= 0;
            state = 0;
            instance_create_depth(x,y,0,obj_txt_DI_intro_comt1);
        }
        break;
}