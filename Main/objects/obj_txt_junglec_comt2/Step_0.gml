/// @description Insert description here
// You can write your code in this editor
dialogue_input();
scr_skip_texticon_blink();

if key_skip
{
    scr_text_skip();
    
    if scr_t > scr_t_max 
    {                
        talked = 1;
        instance_create_depth(x,y,-100000,obj_npc_junglec_comt_choose);         
        instance_destroy();   
    } 
}
