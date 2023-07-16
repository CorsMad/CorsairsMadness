/// @description Insert description here
// You can write your code in this editor
dialogue_input();
scr_skip_texticon_blink();

if key_skip
{
    if typist.get_state() != 1 {typist.skip();} else scr_t++;
    
    if scr_t > scr_t_max 
    {                
        obj_npc_desertc_comt1.talked = 1;
        obj_Player.isDead = 2.1;          
        instance_destroy();   
    } 
}
