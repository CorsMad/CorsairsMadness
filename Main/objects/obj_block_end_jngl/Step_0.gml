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
            
            instance_create_depth(120,248,100,obj_spikes);
            instance_create_depth(136,248,100,obj_spikes);
            instance_create_depth(152,248,100,obj_spikes);
            instance_create_depth(168,248,100,obj_spikes);  
            instance_create_depth(312,248,100,obj_spikes);
            instance_create_depth(328,248,100,obj_spikes);
            instance_create_depth(344,248,100,obj_spikes);
            instance_create_depth(360,248,100,obj_spikes);
            obj_endurance_jungle.state = 1.7;
            obj_endurance_jungle.t = 0;
            instance_destroy();            
            break;
    }
}