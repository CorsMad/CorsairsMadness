depth = -y;          

#region Появление

if (phase = 0) { // Появление
    if state = 0
    {
        x-=2;
        if x<=432
        {
            x = 432;        
            state = 1; 
            
        }
    }
    if (state = 1) { // ожидание + переход     
        t++;
        if t = 15
        {
            var water = instance_create_depth(x,y,depth+1,obj_boat_boss_desert_water);
            water.fol = id;
            instance_create_depth(x-12,y+28,depth-1,obj_sfx_watersplash_boss)        
            instance_create_depth(x+12,y+28,depth-1,obj_sfx_watersplash_boss)
            instance_create_depth(x,y+32,depth-1,obj_sfx_watersplash_boss)   
        }
        image_speed = 1;   
        if t = 25 fnc_snd_play_onetime(snd_vase_destruct);
    }
}

#endregion

