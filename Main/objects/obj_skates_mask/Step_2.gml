/// @description Insert description here
// You can write your code in this editor

if instance_exists(obj_Player) && skate = false
{
    y = obj_Player.y;
    x = obj_Player.x;
    t_p ++;
    if t_p mod 2 = 0
    {
        instance_create_depth(x,y+8,depth-1,obj_abil_boots_particles);   
        t_p = 0;
    }
}
