/// @description Insert description here
// You can write your code in this editor
dialogue_input();
scr_skip_texticon_blink();
scr_txt_vulcano_merch2();
#region skip
 
if key_skip
{
    if typist.get_state() != 1 {typist.skip();} else scr_t++;
    
    if scr_t > scr_t_max 
    {
        obj_npc_lavav_merch.talk = 0;
        obj_Player.isDead = 2.1;  
        global.dia_vulcanoMerch_f_talk = 1;
        scr_save_progress();
        var i = instance_create_depth(214,240,depth,obj_teleport_junglevillage);
        i.TargetRoom = Village_lava;
        i.TargetX = 368;
        i.TargetY = 240;
        instance_destroy();   
    } 
}
#endregion
