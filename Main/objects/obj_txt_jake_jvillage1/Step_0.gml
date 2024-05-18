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
        obj_npc_jake_jvillage.talk = 0;
        instance_create_depth(0,0,-9999999,obj_hpmax_gain_BIGgift_ctsn);
        instance_create_depth(obj_npc_jake_jvillage.x,obj_npc_jake_jvillage.y-64,depth-1,obj_hpmax_gain_BIGgift);
        instance_destroy();   
    } 
}

#endregion
