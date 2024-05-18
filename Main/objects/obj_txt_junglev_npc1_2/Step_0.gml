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
        obj_npc_junglev_npc1.talk = 0;
        obj_Player.isDead = 2.1;   
        global.dia_jnpc = 1;
        scr_save_progress();
        instance_destroy();   
    } 
}

#endregion
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
        obj_npc_junglev_npc1.talk = 0;
        obj_Player.isDead = 2.1;
        instance_destroy();
        }
    else
        {
        text[0,text_current] = string_wrap(text[0,text_current], text_width);
        char_current = 0;
        }
    }
}
