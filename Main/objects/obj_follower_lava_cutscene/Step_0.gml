/// @description Insert description here
// You can write your code in this editor

switch(state)
{
    case 0://anim появления
        t++;
        if t = 100
        {
            t =0;
            state =0.5;
            obj_cutscene_pl1_r15.state = 2;
        }
        break;
    case 1: //anim смеха
        t++;
        if t = 50
        {
            t= 0;
            state = 1.5;
        }
        break;
    case 2: // anim выхода
        t++;
        if t = 50
        {
            t = 0;
            instance_destroy();
        }
        break;
}




