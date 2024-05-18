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
        global.dia_jungleMerch = 1;
        scr_save_progress();
        instance_create_depth(0,0,-100000,obj_txt_tip_possessed_pre);          
        instance_destroy();   
    } 
}

#endregion
