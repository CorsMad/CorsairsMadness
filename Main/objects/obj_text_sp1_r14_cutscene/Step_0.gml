/// @description Insert description here
// You can write your code in this editor
dialogue_input();
scr_skip_texticon_blink();
fnc_lng_fgroundedf_1_r33_1();

#region skip

if key_skip
{
    if typist.get_state() != 1 {typist.skip();} else scr_t++;
    
    if scr_t > scr_t_max 
    {
        obj_Player.isDead = 2.1; 
        obj_follower_snow_cutscene.state = 2;
        obj_follower_snow_cutscene.t = 0;
        obj_follower_snow_cutscene.vspd = -4;
        obj_follower_snow_cutscene.hspd = -3;
        global.Cutscene_sp1_r14 = 0;
        instance_destroy();   
    } 
}

#endregion
