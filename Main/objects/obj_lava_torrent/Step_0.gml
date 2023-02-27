/// @description Insert description here
// You can write your code in this editor
y+=vspd;
/*
0 - внизу
1 - подъем
2 - оставание
3 - спуск
*/

if state = 0 //Внизу
{
    t++;
    if t = t_height_down
    {
        state = 1;
        t = 0;
        vspd = -1;
    }
}

if state = 1 //подъем
{
    t++; 
    if t > t_max vspd = lerp(vspd,0,0.1);
    
    if t > t_max+50
    {
        state = 2;
        vspd = 0;
        t = 0;
    }
}

if state = 2 //оставание
{
    t++;
    if t = t_height_up
    {
        t = 0;
        state = 3;
        vspd = 1;
    }
}

if state = 3 //спуск
{
    t++; 
    if t > t_max vspd = lerp(vspd,0,0.1);
    
    if t > t_max+50
    {
        state = 0;
        vspd = 0;
        t = 0;
    }
}

if state < 2
{
    t_anim++;
    if t_anim = 20
    {
        t_anim = 0;
        instance_create_depth(x+random_range(-8,8),y+random_range(0,8),depth-1,obj_lavatorrent_lava);
        instance_create_depth(x+random_range(-8,8),y+random_range(8,16),depth-1,obj_lavatorrent_lava);
        instance_create_depth(x+random_range(-8,8),y+random_range(16,24),depth-1,obj_lavatorrent_lava);
        instance_create_depth(x+random_range(-8,8),y+random_range(24,32),depth-1,obj_lavatorrent_lava);
    }
    if t_anim = 10
    {
        instance_create_depth(x+random_range(-8,8),y+random_range(0,8),depth-1,obj_lavatorrent_lava);
        instance_create_depth(x+random_range(-8,8),y+random_range(8,16),depth-1,obj_lavatorrent_lava);
        instance_create_depth(x+random_range(-8,8),y+random_range(16,24),depth-1,obj_lavatorrent_lava);
        instance_create_depth(x+random_range(-8,8),y+random_range(24,32),depth-1,obj_lavatorrent_lava);
    }
} else t_anim = 0;