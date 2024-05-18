/// @description Insert description here
// You can write your code in this editor
fnc_lng_t2_start();
dialogue_input();
scr_skip_texticon_blink();

#region skip

if key_skip
{
    scr_text_skip();
    
    if scr_t > scr_t_max 
    {
        obj_cutscene_t2_intro_player_draw.state = 4;
        fnc_msc_stop_play_slow();
        instance_destroy();   
    } 
}

#endregion