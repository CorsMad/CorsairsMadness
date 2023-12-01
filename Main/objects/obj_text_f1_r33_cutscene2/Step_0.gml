/// @description Insert description here
// You can write your code in this editor

dialogue_input();
scr_skip_texticon_blink();

#region skip

if key_skip
{
    if typist.get_state() != 1 {typist.skip();} else scr_t++;
    
    if scr_t > scr_t_max 
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
}

#endregion

