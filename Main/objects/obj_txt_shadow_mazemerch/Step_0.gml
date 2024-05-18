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
        obj_npc_shadow_mazemerch.state = 1;
        obj_Player.isDead = 2.1;      
		obj_maze4_controller.phase = 0;
        instance_destroy();   
    } 
}

#endregion
