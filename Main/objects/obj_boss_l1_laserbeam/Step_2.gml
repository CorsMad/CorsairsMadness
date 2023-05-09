/// @description Insert description here
// You can write your code in this editor
if instance_exists(obj_boss_l1_3)
{
    if pos = -1
    {
        x = obj_boss_l1_3.x-46;
        y = obj_boss_l1_3.y-24;
    }
    if pos = 1
    {
        x = obj_boss_l1_3.x+46;
        y = obj_boss_l1_3.y-24;
    }
} else
{
    state = 2;    
}

if state = 2
{
    instance_create_depth(x,y,depth,obj_boss_l1_laserbeam_end);
    instance_destroy()   ;
}

