/// @description Insert description here
// You can write your code in this editor
fnc_lng_t2_end1();
dialogue_input();
scr_skip_texticon_blink();

#region skip

if key_skip
{
    scr_text_skip();
    
    if scr_t > scr_t_max 
    {
        obj_cutscene_t2_ending_merch_draw.state = 0;
        obj_cutscene_t2_ending_merch_draw.vspd = -7;              
        instance_destroy();   
    } 
}

#endregion
