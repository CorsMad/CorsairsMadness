/// @description Insert description here
// You can write your code in this editor

switch(state)
{
    case 0: // призыв 1 фазы
        t++;
        if t = 50 {
            instance_create_depth(0,0,0,obj_boss_g2_phase1);
            t=0;
            state=1;
            }
        break;
    case 1:  
        break;
    case 2: //призыв 2 фазы
        t++;
        if t = 50 {
            instance_create_depth(480+48,64,101,obj_boss_ge2_phase2);
            t=0;
            state=3;
            }
        break;
    case 3:

        break;
    case 4: //призыв 3 фазы
        t++;
        if t = 100
        {
            instance_create_depth(448,288,101,obj_boss_ge2_phase3)   ;
            instance_destroy();
        }
        break;
}




