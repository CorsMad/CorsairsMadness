/// @description Insert description here
// You can write your code in this editor


switch(state){
    case 0:
        y-=2;
        if y<=640{
            y = 640;
            state = 1;
        }
        break;
    case 1:
        t++;
        if t = 50{
        	t = 0;
        	instance_create_depth(x,y,depth,obj_bossmerch_phase2);
        	instance_destroy();
        }
        break;
}

