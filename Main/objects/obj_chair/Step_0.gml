/// @description Insert description here
// You can write your code in this editor



if state = 1 {
    t++;
    x+=hspd;
    switch(t){
        case 20: image_index = 1;break;
        case 30: image_index = 2;instance_create_depth(x,y-24,depth-1,obj_sfx_dust_expl_big)break;
        case 33: 
            
            instance_destroy();
            break;
    }
}






