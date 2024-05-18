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
        obj_npc_desertv_chief.talk = 0;
        obj_Player.isDead = 2.1;   
        
        global.dia_desertChief = 3; 
        scr_save_progress();
        
        var g1 = instance_create_depth(150,208,-1,obj_money10);
        var g2 = instance_create_depth(150,208,-1,obj_money20);
        var g3 = instance_create_depth(150,208,-1,obj_money20);
        
        g1.hspd = -0.5;
        g2.hspd = 0;
        g3.hspd = 0.5;
        g1.vspd = -5;
        g2.vspd = -5;
        g3.vspd = -5;
        
        instance_destroy();   
    } 
}

#endregion