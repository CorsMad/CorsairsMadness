if state = 1
{
    if instance_exists(obj_block_boss_s2_floor_s1)
    {
        for (var m = 0; m < 28; m+=1) {
            instance_create_depth(24+16*m,224+8,0,obj_sfx_dust_expl_small);
            instance_create_depth(24+16*m,224+8+16,0,obj_sfx_dust_expl_small);
            // code here
        }
        instance_destroy(obj_block_boss_s2_floor_s1);
    }        
    state = 2;
}

if state = 3
{
    if instance_exists(obj_block_boss_s2_floor_s2)
    {
        fnc_snd_play_onetime(snd_wall_explosion);
        for ( var n = 0; n < 9; n++;) {
            instance_create_depth(392,616+16*n,-1,obj_sfx_dust_expl_small);
            instance_create_depth(408,616+16*n,-1,obj_sfx_dust_expl_small);
            instance_create_depth(424,616+16*n,-1,obj_sfx_dust_expl_small);
            instance_create_depth(440,616+16*n,-1,obj_sfx_dust_expl_small);
            instance_create_depth(456,616+16*n,-1,obj_sfx_dust_expl_small);
            instance_create_depth(472,616+16*n,-1,obj_sfx_dust_expl_small);
        }
        instance_destroy(obj_block_boss_s2_floor_s2);
    }
    
    
    instance_destroy();
}

