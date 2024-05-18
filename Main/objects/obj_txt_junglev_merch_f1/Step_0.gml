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
        obj_npc_junglev_merch.talk = 0;
        obj_Player.isDead = 2.1;  
        global.dia_jungleMerch_f_talk = 1;
        scr_save_progress();
        var i = instance_create_depth(119,240,depth,obj_teleport_junglevillage);
        i.TargetRoom = Village_jungle;
        i.TargetX = 403;
        i.TargetY = 240;
        instance_destroy();   
    } 
}

#endregion
