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
        instance_create_depth(0,0,depth,obj_transition_to_map);
        global.completedLava = 1;
        instance_destroy();   
    } 
}

#endregion
