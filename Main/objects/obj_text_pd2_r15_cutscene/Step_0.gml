/// @description Insert description here
// You can write your code in this editor
//fnc_lng_fgroundedf_2_r15_1();
dialogue_input();
scr_skip_texticon_blink();



#region skip

if key_skip
{
    scr_text_skip();
    
    if scr_t > scr_t_max 
    {
        fnc_msc_stop_play();        
        global.Cutscene_pd2_r15 = 0;
        obj_boss_dp_npc.state = 4;
        obj_boss_dp_npc.t = 0;
        instance_destroy();    
 
    } 
}

#endregion


