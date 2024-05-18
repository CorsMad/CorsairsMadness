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
        if global.saved_snow = 1 obj_ctscDI_merch6.state = 2 else {
            obj_ctscDI_merch6.state = 10; 
            instance_create_depth(330,87,-1,obj_ctscDI_ct_p6end);
        }
        instance_destroy();   
    } 
}

#endregion
