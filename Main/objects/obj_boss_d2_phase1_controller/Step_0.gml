/// @description Insert description here
// You can write your code in this editor

/*
1 - появление справа
2 - появление слева

*/

if state = 1
{
    t++;
    if t = 80
    {
        
    }
    if t= 100
    {   
        instance_create_depth(456,96-6,0,obj_boss_d2_earth_right);   
        var en_mask = instance_create_depth(448,96,0,obj_boss_d2_phase1_1);
        en_mask.enemy_hp = enemy_hp;
        en_mask.fol = id;
        t = 0;
        state = 0;
    }
}

if state = 2
{
    t++;
    if t= 100
    {   
        instance_create_depth(24,96-6,0,obj_boss_d2_earth_left);   
        var en_mask = instance_create_depth(32,96,0,obj_boss_d2_phase1_2);
        en_mask.enemy_hp = enemy_hp;
        en_mask.fol = id;
        t = 0;
        state = 0;
    }
}

if enemy_hp <=0 
{
    state = 3;   
}

if state = 3
{
    if instance_exists(obj_boss_d2_phase1_1)
    {
                
        instance_create_depth(obj_boss_d2_phase1_1.x,obj_boss_d2_phase1_1.y,depth,obj_boss_d2_phase1_death);
        instance_destroy(obj_boss_d2_phase1_1);
        instance_destroy();
    } else
    if instance_exists(obj_boss_d2_phase1_2)
    {
        
        instance_create_depth(obj_boss_d2_phase1_2.x,obj_boss_d2_phase1_2.y,depth,obj_boss_d2_phase1_death);
        instance_destroy(obj_boss_d2_phase1_2);  
        instance_destroy();
    } else
    {
        instance_destroy();
        instance_create_depth(0,0,depth,obj_boss_d2_phase2_controller)   ;
    }
}

