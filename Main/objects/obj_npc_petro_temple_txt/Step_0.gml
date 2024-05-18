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
        instance_create_depth(x,y,-99999,obj_npc_petro_temple_ending_rect)
        instance_destroy();  
    } 
}

#endregion

