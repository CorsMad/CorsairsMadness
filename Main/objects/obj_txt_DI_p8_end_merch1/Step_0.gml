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
        if global.saved_shadow = 1 obj_ctscDI_merch8.state = 2 else {
            obj_ctscDI_merch8.state = 10; 
            instance_create_depth(282,135,-1,obj_ctscDI_ct_p8end);
        }
        instance_destroy();   
    } 
}

#endregion
