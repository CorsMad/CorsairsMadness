/// @description Insert description here
// You can write your code in this editor

dialogue_input();
scr_skip_texticon_blink();

#region skip

if key_skip
{
    if typist.get_state() != 1 {typist.skip();} else scr_t++;
    
    if scr_t > scr_t_max 
    {
        
        instance_create_depth(camera_get_view_x(view_camera[0]),camera_get_view_y(view_camera[0]),depth-1000,obj_npc_desertv_npc1_map);
        global.dia_dnpc = 1;
        scr_save_progress();
        instance_destroy();   
    } 
}

#endregion
