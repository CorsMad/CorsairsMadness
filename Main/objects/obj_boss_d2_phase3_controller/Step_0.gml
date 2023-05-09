/// @description Insert description here
// You can write your code in this editor
/*
0 ожидание

*/


if state = 0 
{
    t++;
    if t = 50
    {
        if instance_exists(obj_Player)
        {
            if obj_Player.x < room_width/2 pos = 1 else pos = -1;   
        }
        switch(pos)
        {
            case -1:
                var e = instance_create_depth(32,256-8,0,obj_boss_d2_earth_down);
                e.earth = 1;
                break;
            case 1:
                var e = instance_create_depth(448,256-8,0,obj_boss_d2_earth_down);
                e.earth = 1;
                break;
        }              
    }
    if t = 100
    {
        switch(pos)
        {
            case -1: 
                var i = instance_create_depth(32,240,0,obj_boss_d2_phase3);
                i.mov = 1; 
                i.fol = id;
                break;
            case 1: 
                var i = instance_create_depth(448,240,0,obj_boss_d2_phase3);
                i.mov = -1; 
                i.fol = id;
                break;
        }        
        t = 0;
        state = 1;
          
    }
}

if enemy_hp <=0 
{
    state = 7;   
}

if state = 7
{
    if instance_exists(obj_boss_d2_phase3)
    {
                
        instance_create_depth(obj_boss_d2_phase3.x,obj_boss_d2_phase3.y,depth,obj_boss_d2_phase3_death);
        instance_destroy(obj_boss_d2_phase3);
        instance_destroy();
    } else
    {
        instance_destroy();
        // СОЗДАТЬ ОБЪЕКТ С НАГРАДОЙ instance_create_depth(0,0,depth,obj_boss_d2_phase3_controller)   ;
    }
}