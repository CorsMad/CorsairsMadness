    if place_meeting(x,y,obj_hitbox_mask_hook) 
    {
        if instance_exists(obj_bjoss3_hook_block_l_cr)   
        {
            obj_bjoss3_hook_block_l_cr.state = 3;
            if instance_exists(obj_boss_jp_light_block_r)
            {
                obj_boss_jp_light_block_r.state = 1;
            }
        }
    }