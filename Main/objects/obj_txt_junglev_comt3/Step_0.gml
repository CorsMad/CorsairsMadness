/// @description Insert description here
// You can write your code in this editor
dialogue_input();
scr_skip_texticon_blink();

if key_skip
{
    scr_text_skip();
    
    if scr_t > scr_t_max 
    {        
        obj_npc_junglev_comt.talk = 0;
        obj_Player.isDead = 2.1;   
        global.dia_jungleComt = 0;
        scr_save_progress();
        instance_destroy();   
    } 
}
