/// @description Insert description here
// You can write your code in this editor
dialogue_input();
scr_skip_texticon_blink();
if key_skip
{
    scr_text_skip();
    
    if scr_t > scr_t_max 
    {        
        obj_npc_lavav_comt.talk = 0;
        obj_Player.isDead = 2.1;    
        global.dia_lavaComt = 0;
        scr_save_progress();
        if instance_exists(obj_block_jungle_village) instance_destroy(obj_block_jungle_village)
        if instance_exists(obj_popup_creator_village_trigger) instance_destroy(obj_popup_creator_village_trigger)
        instance_destroy();   
    } 
}
