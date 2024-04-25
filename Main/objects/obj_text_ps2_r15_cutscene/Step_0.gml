/// @description Insert description here
// You can write your code in this editor
//fnc_lng_fgroundedf_2_r15_1();
dialogue_input();
scr_skip_texticon_blink();


#region skip

if key_skip
{
    if typist.get_state() != 1 {typist.skip();} else scr_t++;
    
    if scr_t > scr_t_max 
    {
        fnc_msc_stop_play();        
        global.Cutscene_sp2_r14 = 0;
        obj_boss_sp_npc.state = 4;
        obj_boss_sp_npc.t = 0;
        instance_destroy();    
 
    } 
}

#endregion


