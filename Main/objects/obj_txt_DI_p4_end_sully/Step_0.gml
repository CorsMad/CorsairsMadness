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
        instance_create_depth(176,272,301,obj_ctscDI_sully6)
        instance_destroy();   
    } 
}

#endregion
