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
        instance_create_depth(-32,112,-1,obj_DI_d4_pew_controller)
        instance_destroy();   
    } 
}

#endregion
