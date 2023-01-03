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
        obj_player_t1_ctscn.state = 4;
        obj_mask_level_mask.state = 1;              
        instance_destroy();   
    } 
}

#endregion


if scr_t = 3 
{
    fnc_msc_start_checkpoint(msc_tutor1_end);   
}



/*

player_input();
if key_jump || key_attack
{
     var _len = string_length(text[0,text_current]);
if (char_current < _len)
    {
    char_current = _len;
    }
    else
    {
    text_current += 1;
    if (text_current > text_last)
        {
        obj_player_t1_ctscn.state = 4;
        obj_mask_level_mask.state = 1;
        
        instance_destroy();
        }
    else
        {
        text[0,text_current] = string_wrap(text[0,text_current], text_width);
        char_current = 0;
        }
    }  
}
