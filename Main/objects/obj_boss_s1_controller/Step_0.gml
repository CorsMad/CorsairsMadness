/// @description Insert description here
// You can write your code in this editor
/*
  2 - 2 фаза, оба уничтожены
*/

if state = 1
{
    t++;
    if t = 100
    {
        t = 0;
        state = 2;
        obj_boss_s1_phase1_appear.state = 1;
    }
}   

if state = 2
{
    if instance_exists(obj_boss_s1_phase2_1_death) && instance_exists(obj_boss_s1_phase2_2_death) {
        obj_boss_s1_phase2_1_death.state = 3;
        obj_boss_s1_phase2_2_death.state = 3;
        state = 2.1;
    }
}

if state = 2.1
{
    if obj_boss_s1_phase2_1_death.state = 4 && obj_boss_s1_phase2_2_death.state = 4 {
        state = 2.2;
        t =0;
    }
}

if state = 2.2
{
    t++;
    if t = 1
    {
        instance_create_depth(240+32,136+32,depth-1,obj_sfx_explosion_bomb);
        instance_create_depth(240-32,136+32,depth-1,obj_sfx_explosion_bomb);
        instance_create_depth(240+32,136-32,depth-1,obj_sfx_explosion_bomb);
        instance_create_depth(240-32,136-32,depth-1,obj_sfx_explosion_bomb);
        instance_create_depth(240,136,depth-1,obj_sfx_explosion_bomb);   
    }
    if t = 10
    {
        t = 0;
        instance_destroy(obj_boss_s1_phase2_1_death);
        instance_destroy(obj_boss_s1_phase2_2_death);
        instance_create_depth(224,128,0,obj_boss_s1_phase3_1);
        instance_create_depth(256,128,0,obj_boss_s1_phase3_2);
        instance_create_depth(224,160,0,obj_boss_s1_phase3_3);
        instance_create_depth(256,160,0,obj_boss_s1_phase3_4);
        state = 3;
        
    }
}