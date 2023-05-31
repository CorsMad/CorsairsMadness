/// @description Insert description here
// You can write your code in this editor
if instance_exists(obj_boat_boss_desert_phase1)
{
    depth = obj_boat_boss_desert_phase1.depth-1;
    if state = 0 || state = 0.5
    {
        x = obj_boat_boss_desert_phase1.x;
        y = obj_boat_boss_desert_phase1.y+foly;
    }
} else if instance_exists(obj_boat_boss_desert_phase3)        
    {
    depth = obj_boat_boss_desert_phase3.depth-1;
    if state = 0 || state = 0.5 || state = 4
        {
            x = obj_boat_boss_desert_phase3.x;
            y = obj_boat_boss_desert_phase3.y+foly;
        } 
} else instance_destroy();