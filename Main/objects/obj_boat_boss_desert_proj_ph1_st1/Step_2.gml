/// @description Insert description here
// You can write your code in this editor

if instance_exists(obj_boat_boss_desert_phase1)
{
    depth = obj_boat_boss_desert_phase1.depth-1;
    if state = 0 {
        x = obj_boat_boss_desert_phase1.x+18;  
        y = obj_boat_boss_desert_phase1.y+10; 
    }
} else instance_destroy();