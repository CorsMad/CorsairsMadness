/// @description Insert description here
// You can write your code in this editor
dialogue_input();
scr_skip_texticon_blink();

if key_skip
{
    scr_text_skip();
    
    if scr_t > scr_t_max 
    {                
        obj_npc_snowc_comt1.talked = 1;
        obj_Player.isDead = 2.1;          
        instance_destroy();   
    } 
}
