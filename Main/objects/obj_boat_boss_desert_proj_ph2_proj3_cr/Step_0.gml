/// @description Insert description here
// You can write your code in this editor
if state = 0 
{
    if image_alpha < 1 image_alpha+=0.1;   
    t++;
    
    if t mod 10 = 0
    {
        var e1 = instance_create_depth(x,y,depth-50,choose(obj_sfx_electricity_follow,obj_sfx_electricity2_follow))
        e1.fol = id;
        e1.folx = random_range(-24,24);
        e1.foly = random_range(-24,24);
        e1.image_speed = 2;
        var e2 = instance_create_depth(x,y,depth-50,choose(obj_sfx_electricity_follow,obj_sfx_electricity2_follow))
        e2.fol = id;
        e2.folx = random_range(-24,24);
        e2.foly = random_range(-24,24);
        e2.image_speed = 2;   
    }
    
    if t mod 30 = 0
    {
        for (var el = 0; el < 24; el++;) {
            instance_create_depth(x-24-16*el,y-48,depth-1,obj_boat_boss_desert_proj_ph2_el_startup);                                    
            instance_create_depth(x-24-16*el,y+48,depth-1,obj_boat_boss_desert_proj_ph2_el_startup);
        }   
    }
    
    switch(t)
    {
        case 20: image_index = 1;break;   
        case 40: image_index = 2;break;   
        case 60: image_index = 3;break;   
        case 80: image_index = 4;break;   
        case 100: image_index = 5;break;   
    }
    
    if t = 105 {t=0;state = 1;}
}

if state = 1
{
    t++;
    if t mod 2 = 0
    {
        if image_index = 4 image_index = 5 else image_index = 4;  
    }
    switch(t)
    {
        case 4: image_alpha = 0.9;break;
        case 6: image_alpha = 0.8;break;
        case 8: instance_destroy();
        
    }
}