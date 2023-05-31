/// @description Insert description here
// You can write your code in this editor
if instance_exists(obj_boat_boss_desert_phase2)
{
    depth = obj_boat_boss_desert_phase2.depth-1;
    if state = 0 {
        x = obj_boat_boss_desert_phase2.x+18;  
        y = obj_boat_boss_desert_phase2.y+10; 
    }
} else if instance_exists(obj_boat_boss_desert_phase3)
    {
    depth = obj_boat_boss_desert_phase3.depth-1;
    if state = 0 {
        x = obj_boat_boss_desert_phase3.x+18;  
        y = obj_boat_boss_desert_phase3.y+10; 
    }    
} else instance_destroy();