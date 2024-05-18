/// @description Insert description here
// You can write your code in this editor

dialogue_input();
scr_skip_texticon_blink();


#region skip

if key_skip
{
    scr_text_skip();
    
    if scr_t > scr_t_max 
    {
        fnc_msc_stop_play();        
        global.Cutscene_gp2_r14 = 0;
        obj_boss_pg_npc.state = 4;
        obj_boss_pg_npc.t = 0;
        instance_destroy();    
 
    } 
}

#endregion


