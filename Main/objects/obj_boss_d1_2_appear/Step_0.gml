/// @description Insert description here
// You can write your code in this editor
t++;

switch(t)
{
    case 50:    image_index = 1;break;  
    case 100:   image_index = 2;break;  
    case 150:   image_index = 3;break;  
    case 200:   image_index = 4;break;  
    case 250:   image_index = 5;break;  
    case 300:   
        image_index = 6;
        instance_destroy(obj_boss_d1_1_death);
        break;  
    case 350:   
        instance_create_depth(x,y,depth,obj_boss_d1_2);
        instance_destroy();
        break;
}


#region Sand
if image_index > 0
{
    t_sand++;
    if t_sand = 5
    {
        if image_index > 0  instance_create_depth(x+450+random_range(-14,14),y+187+random_range(0,24),depth+1,obj_boss1_d1_sand);
        if image_index >= 3 instance_create_depth(x+435+random_range(-14,14),y+187+random_range(0,24),depth+1,obj_boss1_d1_sand);
        if image_index >= 4 instance_create_depth(x+405+random_range(-14,14),y+187+random_range(0,24),depth+1,obj_boss1_d1_sand);
        t_sand = 0;
    }
}



#endregion
