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
        global.dia_shadowComt = 1;
        scr_save_progress();
        instance_create_depth(x,y,-100000,obj_npc_junglev_comt_choose);          
        instance_destroy();   
    } 
}

#endregion

