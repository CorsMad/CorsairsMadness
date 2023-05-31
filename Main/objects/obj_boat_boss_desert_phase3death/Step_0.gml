t1++;
if t1 = 10
{
    instance_create_depth(x+random_range(-16,16),y+random_range(-16,16),depth-1000,obj_sfx_explosion)   ;
    t1 = 0;
}


if state = 0
{
    if point_distance(x, y, 432, 176) > 2
        {
            move_towards_point(432, 176, 2);
        
    } else 
    {
        speed = 0;   
        state = 1;
        image_speed = 1;
        sprite_index = spr_boat_boss_desert_idle;
    }
}

if state = 1
{    
    t++;
    if t = 100
    {
        instance_destroy(obj_boat_boss_desert_water);
        instance_destroy();
        instance_create_depth(x,y,depth,obj_boat_boss_desert_phase3);
    }
}