if t<160 t1++;
if t1 mod 20
{
    instance_create_depth(x+random_range(-16,16),y+random_range(-16,16),depth-1000,obj_sfx_explosion)   ;
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
    switch(t)
    {
        case 100: sprite_index = spr_boat_boss_desert_appear;image_index = 0;image_speed =0 ;break;
        case 105: image_index=12;break;
        case 110: image_index=11;break;
        case 115: image_index=10;break;
        case 120: image_index=9;break;
        case 125: image_index=8;break;
        case 130: image_index=7;break;
        case 135: image_index=6;break;
        case 140: image_index=5;break;
        case 145: image_index=4;break;
        case 150: image_index=3;break;
        case 155: image_index=2;break;
        case 160: image_index=1;break;
        case 165: image_index=0;break;        
    }
    if t = 170
    {
        obj_sp_boat_D2.state = 16.5;
        obj_sp_boat_D2.t = 0;
        fnc_msc_play(msc_tutor_shore);
        instance_destroy(obj_boat_boss_desert_water);
        instance_destroy();
        
        
    }
}