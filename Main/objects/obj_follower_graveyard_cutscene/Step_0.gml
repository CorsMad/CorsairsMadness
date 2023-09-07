/// @description Insert description here
// You can write your code in this editor

/*
0 - появление
1 - касание земли + начало разговора
2 - отпрыг
*/

switch(state)
{
    case 0:
        x+=3;
        obj_Player.image_xscale = -1;
        if x >= 176
        {
            x = 176;
            state = 1;
            obj_cutscene_pg1_r17.state = 2;
            obj_cutscene_pg1_r17.t = 0;    
        }
        break;
    case 1:
        sprite_index = spr_boss_gp_idle;
        break;
    case 2:
		sprite_index = spr_boss_gp_fly;
        y-=3;
        if y <= -32 instance_destroy();
        break;
}





