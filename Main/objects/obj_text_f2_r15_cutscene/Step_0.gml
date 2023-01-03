/// @description Insert description here
// You can write your code in this editor

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
        fnc_msc_stop_play();
        obj_Player.isDead = 0;
        var b = instance_create_depth(384,256,0,obj_boss_jp_phase1);
        b.image_xscale = -1;
        global.Cutscene_jp2_r15 = 0;
        instance_destroy(obj_boss_jp_npc)
        instance_destroy();
        }
    else
        {
        text[0,text_current] = string_wrap(text[0,text_current], text_width);
        char_current = 0;
        }
    }   
}

if t !=0 t++;
if t = 2
{
       
}