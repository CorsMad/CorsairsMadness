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
        obj_credits_good_ship.state = 9;
		instance_destroy(icontalk);
        instance_destroy();   
    } 
}

#endregion
