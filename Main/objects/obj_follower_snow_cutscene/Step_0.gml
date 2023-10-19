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
        image_speed = 0;
        if vspd < 0 image_index = 0; else image_index = 1;
        
        y+=vspd;
        if vspd < 4 vspd+=0.2;
        if vspd > 0 && y>=176
        {
            y = 176;
            state = 1;   
            obj_Player.vspd = -4;
            obj_Player.image_xscale = -1;
            obj_cutscene_sp1_r14.state = 2;
            obj_cutscene_sp1_r14.t = 0;
            vspd = 0;
            landed = 1;
            fnc_snd_play_onetime(snd_follower_landing);
        }
        break;
    case 1:
        if landed = 1 {landed_t++;};
        if landed_t = 20 {landed_t=0;landed=0;};
        
        if landed = 1{
            sprite_index = spr_boss_sp_jump;
            image_speed = 0;
            image_index = 2;
        } else
        {
            sprite_index = spr_boss_sp_idle;
            image_speed = 1;
        }
        break;
    case 2:
        image_speed = 0;
        sprite_index = spr_boss_sp_jump;
        if vspd < 0 image_index = 0; else image_index = 1;
        
        
        y+=vspd;
        x+=hspd;
        vspd+=0.2;
        if x <= -64 instance_destroy();
        break;
}





