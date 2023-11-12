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
        obj_npc_petro_village.talk = 0;
        instance_create_depth(0,0,-9999999,obj_hpmax_gain_BIGgift_ctsn); 
        instance_create_depth(obj_npc_petro_village.x,obj_npc_petro_village.y-64,depth-1,obj_hpmax_gain_BIGgift);       
        instance_destroy();   
    } 
}

#endregion
