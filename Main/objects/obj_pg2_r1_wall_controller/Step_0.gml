if state = 0 // Flyer Flyer Spearman
{
    t++;
    switch(t)
    {
        case 100:
            if instance_exists(obj_Player)
            {
                if obj_Player.x> room_width/2
                {
                    var e1 = instance_create_depth(160,144,0,obj_molded_big_spawner_n);
                    e1.obj_cr = obj_molded_snow_flying;                    
                } else 
                {
                    var e1 = instance_create_depth(432,128,0,obj_molded_big_spawner_n);
                    e1.obj_cr = obj_molded_snow_flying;   
                }
            }  
            break;
        case 200:
            if instance_exists(obj_Player)
            {
                if obj_Player.x> room_width/2
                {
                    var e1 = instance_create_depth(208,96,0,obj_molded_big_spawner_n);
                    e1.obj_cr = obj_molded_snow_flying;                    
                } else 
                {
                    var e1 = instance_create_depth(368,112,0,obj_molded_big_spawner_n);
                    e1.obj_cr = obj_molded_snow_flying;   
                }
            }
            break;
        case 400:
            if instance_exists(obj_Player)
            {
                if obj_Player.x> room_width/2
                {
                    var e1 = instance_create_depth(112,224,0,obj_molded_big_spawner_n);
                    e1.obj_cr = obj_molded_snow_spearman; 
                    e1.y_cr = 16;
                } else 
                {
                    var e1 = instance_create_depth(464,224,0,obj_molded_big_spawner_n);
                    e1.obj_cr = obj_molded_snow_spearman; 
                    e1.y_cr = 16;
                }
            } 
            break;
        case 500:
            state = 0.5;
            t = 0;
            break;       
    }   
}

if state = 0.5
{
    if !instance_exists(obj_molded_snow_spearman) && !instance_exists(obj_molded_snow_flying)
    {
        state = 1;          
    }
}

if state = 1 // Spearman Spearman Flyer
{
    t++;
    switch(t)
    {
        case 75:
            if instance_exists(obj_Player)
            {
                if obj_Player.x> room_width/2
                {
                    var e1 = instance_create_depth(192,224,0,obj_molded_big_spawner_n);
                    e1.obj_cr = obj_molded_snow_spearman; 
                    e1.y_cr = 16;
                } else 
                {
                    var e1 = instance_create_depth(384,224,0,obj_molded_big_spawner_n);
                    e1.obj_cr = obj_molded_snow_spearman; 
                    e1.y_cr = 16;
                }
            } 
            break;
        case 200:
            if instance_exists(obj_Player)
            {
                if obj_Player.x> room_width/2
                {
                    var e1 = instance_create_depth(112,224,0,obj_molded_big_spawner_n);
                    e1.obj_cr = obj_molded_snow_spearman; 
                    e1.y_cr = 16;
                } else 
                {
                    var e1 = instance_create_depth(464,224,0,obj_molded_big_spawner_n);
                    e1.obj_cr = obj_molded_snow_spearman; 
                    e1.y_cr = 16;
                }
            } 
            break;
        case 400:
            if instance_exists(obj_Player)
            {
                if obj_Player.x> room_width/2
                {
                    var e1 = instance_create_depth(160,144,0,obj_molded_big_spawner_n);
                    e1.obj_cr = obj_molded_snow_flying;                    
                } else 
                {
                    var e1 = instance_create_depth(368,112,0,obj_molded_big_spawner_n);
                    e1.obj_cr = obj_molded_snow_flying;   
                }
            }  
            break;
        case 500:
            state = 1.5;
            t = 0;
            break;            
    }      
}

if state = 1.5 
{
    if !instance_exists(obj_molded_snow_flying) && !instance_exists(obj_molded_snow_spearman)
    {
        state = 2;   
    }
}

if state = 2 // Spearman Flyer Spearman
{
    t++;
    switch(t)
    {
        case 100:
            if instance_exists(obj_Player)
            {
                if obj_Player.x> room_width/2
                {
                    var e1 = instance_create_depth(112,224,0,obj_molded_big_spawner_n);
                    e1.obj_cr = obj_molded_snow_spearman; 
                    e1.y_cr = 16;
                } else 
                {
                    var e1 = instance_create_depth(464,224,0,obj_molded_big_spawner_n);
                    e1.obj_cr = obj_molded_snow_spearman; 
                    e1.y_cr = 16;
                }
            } 
            break;
        case 200:
            if instance_exists(obj_Player)
            {
                if obj_Player.x> room_width/2
                {
                    var e1 = instance_create_depth(160,144,0,obj_molded_big_spawner_n);
                    e1.obj_cr = obj_molded_snow_flying;                    
                } else 
                {
                    var e1 = instance_create_depth(432,128,0,obj_molded_big_spawner_n);
                    e1.obj_cr = obj_molded_snow_flying;   
                }
            } 
            break;
        case 300:
            if instance_exists(obj_Player)
            {
                if obj_Player.x> room_width/2
                {
                    var e1 = instance_create_depth(192,224,0,obj_molded_big_spawner_n);
                    e1.obj_cr = obj_molded_snow_spearman; 
                    e1.y_cr = 16;
                } else 
                {
                    var e1 = instance_create_depth(384,224,0,obj_molded_big_spawner_n);
                    e1.obj_cr = obj_molded_snow_spearman; 
                    e1.y_cr = 16;
                }
            } 
            break;
        case 400:
            state = 2.5;
            t =0;
            break;
    }
}

if state = 2.5
{
    if !instance_exists(obj_molded_snow_flying) && !instance_exists(obj_molded_snow_spearman)
    {
        state = 3;   
    }   
}

if state = 3
{
    t++;
    if t > 50
    {
        if instance_exists(obj_wall_trigger)
        {
            obj_wall_trigger.state = 2;
            obj_wall_trigger.t = 0;
        }      
        instance_destroy();
    }
}
