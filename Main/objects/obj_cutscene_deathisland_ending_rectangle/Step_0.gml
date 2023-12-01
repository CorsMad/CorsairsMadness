/// @description Insert description here
// You can write your code in this editor

switch(state){
    case 1:
        t++;
        if t = 50{
            t = 0;
            state = 2;
        }
        break;
    case 2:
        image_alpha -=0.01;
        if image_alpha <=0 {
            image_alpha = 0;
            instance_destroy();
            obj_cutscene_deathisland_ending_merch.state = 1;
        }
        break;
}