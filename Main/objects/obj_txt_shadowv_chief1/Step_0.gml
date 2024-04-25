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
        obj_npc_shadowv_chief.talk = 0;
        obj_Player.isDead = 2.1;
        global.dia_shadowChief = 1;  
        scr_save_progress();
        instance_destroy();   
    } 
}

#endregion
