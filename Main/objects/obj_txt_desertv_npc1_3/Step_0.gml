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
        instance_create_depth(camera_get_view_x(view_camera[0]),camera_get_view_y(view_camera[0]),depth-1000,obj_npc_desertv_npc1_map);      
        instance_destroy();   
    } 
}

#endregion
