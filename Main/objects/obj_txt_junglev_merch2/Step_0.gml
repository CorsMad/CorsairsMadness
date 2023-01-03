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
        global.dia_jungleMerch = 1;
        instance_create_depth(x,y,-100000,obj_txt_tip_possessed);          
        instance_destroy();   
    } 
}

#endregion

/*





player_input();

if key_attack || key_jump
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
        global.dia_jungleMerch = 1;
        instance_create_depth(x,y,-100000,obj_txt_tip_possessed);
        instance_destroy();
        }
    else
        {
        text[0,text_current] = string_wrap(text[0,text_current], text_width);
        char_current = 0;
        }
    } 
}