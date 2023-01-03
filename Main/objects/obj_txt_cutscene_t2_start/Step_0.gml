/// @description Insert description here
// You can write your code in this editor

dialogue_input();
scr_skip_texticon_blink();

#region skip

if key_skip
{
    if typist.get_state() != 1 {typist.skip();} else scr_t++;
    
    if scr_t > scr_t_max 
    {
        obj_cutscene_t2_intro_player_draw.state = 4;
        fnc_msc_stop_play_slow();
        instance_destroy();   
    } 
}

#endregion