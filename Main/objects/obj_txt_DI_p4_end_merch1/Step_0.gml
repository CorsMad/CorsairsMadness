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
        if global.saved_desert = 1 obj_ctscDI_merch4.state = 2 else {
            obj_ctscDI_merch4.state = 10; 
            instance_create_depth(288,144,301,obj_ctscDI_merch1_snow);
        }
        instance_destroy();   
    } 
}

#endregion
