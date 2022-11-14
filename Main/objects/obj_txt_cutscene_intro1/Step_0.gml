/// @description Insert description here
// You can write your code in this editor

if text_current = 3 
{
    obj_cutscene_intro_player_draw.state = 22;
}

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
        //room_restart();
        obj_cutscene_intro_player_draw.state = 3;
        //obj_cutscene_intro_player_draw.t = 0;
        instance_destroy();
        }
    else
        {
        text[0,text_current] = string_wrap(text[0,text_current], text_width);
        char_current = 0;
        }
    }   
}