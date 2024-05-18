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
        obj_Player.isDead = 2.1; 
        if instance_exists(obj_wall_trigger_pl1_r15)
        {
            obj_wall_trigger_pl1_r15.state = 2;
            obj_wall_trigger_pl1_r15.t = 0;   
        }
        fnc_msc_stop_play();
        fnc_msc_start_checkpoint(msc_follower_chase);
        obj_follower_lava_cutscene.state = 2;
        obj_follower_lava_cutscene.t = 0;
        global.Cutscene_pl1_r15 = 0;
        instance_destroy();   
    } 
}

#endregion

