/// @description Insert description here
// You can write your code in this editor

switch(state){
    case 0:
        break;
    case 1:
        break;
    case 2:
    t++;
    if t = 50{
        instance_create_depth(x,y-16,-1,obj_ctscDI_merch1_boots)
    }
    if t = 100{
        state = 3;
        t = 0;
    }
        break;
    case 3:
    t++;
    if t = 50{
        obj_cutscene_DIArrive_player_draw.state = 2;
        instance_destroy();
    }
        break;
    case 4:
        break;      
}








