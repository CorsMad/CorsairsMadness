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
        instance_create_depth(0,0,0,obj_txt_DI_p6_end_merch2)
        instance_destroy();   
    } 
}

#endregion
