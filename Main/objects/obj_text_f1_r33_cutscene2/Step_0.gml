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
        obj_follower_grounded_cutscene.state = 7;
        if instance_exists(obj_cutscene_f1_r33_1)
        {
            instance_destroy(obj_cutscene_f1_r33_1);   
        }
        if instance_exists(obj_Player)
        {
            obj_Player.isDead = 0;   
        }
        if instance_exists(obj_wall_trigger_close1_f1_r33)
        {
            obj_wall_trigger_close1_f1_r33.state = 2;
            obj_wall_trigger_close1_f1_r33.t = 0;
        }
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