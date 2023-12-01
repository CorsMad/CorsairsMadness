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
        obj_npc_shadowv_npc1.talk = 0;
        obj_Player.isDead = 2.1;  
        global.dia_gnpc = 2;
        var g1 = instance_create_depth(x,y-16,-1,obj_money10);
        var g2 = instance_create_depth(x,y-16,-1,obj_money10);
        var g3 = instance_create_depth(x,y-16,-1,obj_money10);
        
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
