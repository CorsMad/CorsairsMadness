/// @description Insert description here
// You can write your code in this editor


switch(state){
    case 0:
        break;
    case 1:
        t++;
        if t = 100{
            t = 0;
            state = 1.5;
        }
        break;
    case 2:
        x+=2;
        if x > room_width+64 {
            instance_destroy();
            obj_ctsc_DI_intro_controller.state = 2;
            obj_ctsc_DI_intro_controller.t = 0;
        }
        break;
}







