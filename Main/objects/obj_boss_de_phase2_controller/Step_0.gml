/// @description Insert description here
// You can write your code in this editor

/*
1 - появление вверх
2 - появление вниз
3 - появление вверх
4 - появление вниз и отдых

*/

if state = 0
{
    t++;
    if t = 100
    {
        t = 0;
        state = 1;
        t = 0;
    }
}

if state = 1
{
    t++;
    if t = 50 
    {
        pl_x = obj_Player.x
        var e = instance_create_depth(pl_x,256-8,0,obj_boss_d2_earth_down);
        e.earth = 1;
        e.t = -50;
    }
    if t = 150
    {
        var en_mask = instance_create_depth(pl_x,270,0,obj_boss_d2_phase2_up)  
        en_mask.enemy_hp = enemy_hp;
        en_mask.fol = id;
        state = 1.5
        t = 0;
    }
}

if state = 2
{
    t++;
    if t = 10 
    {
        pl_x = obj_Player.x
        var e = instance_create_depth(pl_x,32+8,0,obj_boss_d2_earth_up);
        e.earth = 1;
    }
    if t = 60
    {
        var en_mask = instance_create_depth(pl_x,32,0,obj_boss_d2_phase2_down_1) 
        en_mask.enemy_hp = enemy_hp;
        en_mask.fol = id;
        state = 2.5
        t = 0;
    }
    
}

if state = 3
{
    t++;
    if t = 50 
    {
        pl_x = obj_Player.x
        var e = instance_create_depth(pl_x,256-8,0,obj_boss_d2_earth_down);
        e.earth = 1;
    
    }
    if t = 100
    {
        var en_mask = instance_create_depth(pl_x,270,0,obj_boss_d2_phase2_up)   
        en_mask.enemy_hp = enemy_hp;
        en_mask.fol = id;
        state = 3.5
        t = 0;
    }
}

if state = 4
{
    t++;
    if t = 10 
    {
        pl_x = obj_Player.x
        var e = instance_create_depth(pl_x,32+8,0,obj_boss_d2_earth_up);
        e.earth = 1;
    }
    if t = 60
    {
        var en_mask = instance_create_depth(pl_x,32,0,obj_boss_d2_phase2_down_2)   
        en_mask.enemy_hp = enemy_hp;
        en_mask.fol = id;
        state = 4.5
        t = 0;
    }
}

if enemy_hp <=0 
{
    state = 7;   
}

if state = 7
{
    if instance_exists(obj_boss_d2_phase2_up)
    {
                
        instance_create_depth(obj_boss_d2_phase2_up.x,obj_boss_d2_phase2_up.y,depth,obj_boss_de_phase2_death);
        instance_destroy(obj_boss_d2_phase2_up);
        instance_destroy();
    } else
    if instance_exists(obj_boss_d2_phase2_down_1)
    {
        
        instance_create_depth(obj_boss_d2_phase2_down_1.x,obj_boss_d2_phase2_down_1.y,depth,obj_boss_de_phase2_death);
        instance_destroy(obj_boss_d2_phase2_down_1);  
        instance_destroy();
    } else
    if instance_exists(obj_boss_d2_phase2_down_2)
    {
        
        instance_create_depth(obj_boss_d2_phase2_down_2.x,obj_boss_d2_phase2_down_2.y,depth,obj_boss_de_phase2_death);
        instance_destroy(obj_boss_d2_phase2_down_2);  
        instance_destroy();
    } else
    {
        instance_destroy();
        instance_create_depth(0,0,depth,obj_boss_d2_phase3_controller)   ;
    }
}
