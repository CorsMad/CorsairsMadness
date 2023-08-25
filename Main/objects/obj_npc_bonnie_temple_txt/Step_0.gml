/// @description Insert description here
// You can write your code in this editor
fnc_lng_fgroundedf_2_r15_2();
dialogue_input();
scr_skip_texticon_blink();

#region skip

if key_skip
{
    if typist.get_state() != 1 {typist.skip();} else scr_t++;
    
    if scr_t > scr_t_max 
    {
        instance_create_depth(x,y,-99999,obj_npc_bonnie_temple_ending_rect)
        instance_destroy();  
    } 
}

#endregion

