if state = 1
{
    t++;
    switch(t)
    {
        case 5: 
            fnc_snd_play_over(snd_terrain_destroy);
            for (d1 = 1; d1 < 6; d1+=1)
            {
                instance_create_depth(x+16*d1,y+8,depth-1,obj_sfx_dust_expl_small);   
            }
            for (d2 = 1; d2 < 6; d2+=1)
            {
                instance_create_depth(x+16*d2,y+24,depth-1,obj_sfx_dust_expl_small);   
            }
            image_index = 1;
            
            break;
        case 50: 
            fnc_snd_play_over(snd_terrain_destroy);
            for (d1 = 1; d1 < 6; d1+=1)
            {
                instance_create_depth(x+16*d1,y+8,depth-1,obj_sfx_dust_expl_small);   
            }
            for (d2 = 1; d2 < 6; d2+=1)
            {
                instance_create_depth(x+16*d2,y+24,depth-1,obj_sfx_dust_expl_small);   
            }
            image_index = 2;
            break;
        case 100:
            fnc_snd_play_over(snd_terrain_destroy);
            for (d1 = 1; d1 < 6; d1+=1)
            {
                instance_create_depth(x+16*d1,y+8,depth-1,obj_sfx_dust_expl_small);   
            }
            for (d2 = 1; d2 < 6; d2+=1)
            {
                instance_create_depth(x+16*d2,y+24,depth-1,obj_sfx_dust_expl_small);   
            }
            image_index = 3;
            break;
        case 150: 
            fnc_snd_play_over(snd_terrain_destroy);
            instance_create_depth(x+24,y+8,-2,obj_sfx_dust_expl_big);
            instance_create_depth(x+72,y+8,-2,obj_sfx_dust_expl_big);
            
            var s1 = instance_create_depth(120,248,150,obj_spikes);s1.image_angle = 0;
            var s2 = instance_create_depth(136,248,150,obj_spikes);s2.image_angle = 0;
            var s3 = instance_create_depth(152,248,150,obj_spikes);s3.image_angle = 0;
            var s4 = instance_create_depth(168,248,150,obj_spikes);s4.image_angle = 0;
            var s5 = instance_create_depth(312,248,150,obj_spikes);s5.image_angle = 0;
            var s6 = instance_create_depth(328,248,150,obj_spikes);s6.image_angle = 0;
            var s7 = instance_create_depth(344,248,150,obj_spikes);s7.image_angle = 0;
            var s8 = instance_create_depth(360,248,150,obj_spikes);s8.image_angle = 0;
            obj_endurance_jungle.state = 1.7;
            obj_endurance_jungle.t = 0;
            instance_destroy();            
            break;
    }
}