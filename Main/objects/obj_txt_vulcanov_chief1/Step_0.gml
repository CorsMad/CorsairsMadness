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
        obj_npc_vulcanov_chief.talk = 0;
        obj_Player.isDead = 2.1;
        global.dia_lavaChief = 1;   
        scr_save_progress();
        instance_destroy();   
    } 
}

#endregion
/*
#region иконка
if text = text1 || text = text3 { 
    if obj_Player.x > obj_npc_vulcanov_chief.x obj_Player.image_xscale = -1 else obj_Player.image_xscale = 1
} else {  
    if obj_Player.x > obj_npc_lavav_merch.x obj_Player.image_xscale = -1 else obj_Player.image_xscale = 1
}
#endregion