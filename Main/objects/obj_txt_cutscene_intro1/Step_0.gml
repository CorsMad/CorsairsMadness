/// @description Insert description here
// You can write your code in this editor

dialogue_input();
scr_skip_texticon_blink();

#region skip

if key_skip
{
    scr_text_skip();
    
    if scr_t > 4 
    {
        obj_cutscene_intro_player_draw.state = 3;               
        instance_destroy();   
    } 
}

#endregion

if scr_t = 3
{
    obj_cutscene_intro_player_draw.state = 22;
}

