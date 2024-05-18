/// @description Insert description here
// You can write your code in this editor
fnc_lng_t2_end2();
dialogue_input();
scr_skip_texticon_blink();

#region skip

if key_skip
{
    scr_text_skip();
    
    if scr_t > scr_t_max 
    {
        instance_create_depth(0,0,depth-1,obj_cutscene_t2_ending_rect_to_map);
        instance_create_depth(-64,272,0,obj_ctsc_b_t2_boat);              
        instance_destroy();   
    } 
}

#endregion
