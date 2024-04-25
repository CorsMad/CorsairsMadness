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
        fnc_msc_stop_play_slow()
        obj_Player.isDead = 2.1; 
        obj_follower_graveyard_cutscene.state = 2;
        global.Cutscene_pg1_r17 = 0;
        instance_destroy();   
    } 
}

#endregion
