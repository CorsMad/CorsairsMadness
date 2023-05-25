/// @description Insert description here
// You can write your code in this editor
if state = 0
{
    hspeed = lerp(hspeed,0,0.1);
    vspeed = lerp(vspeed,0,0.1);
    t++;
    if t = 20
    { 
        state = 1;   
    }
}

if state = 1
{
    en = instance_nearest(x,y,obj_enemy_test)
    if en!=noone
        {
        if point_distance(x, y, en.x, en.y) > spd
        {
            move_towards_point(en.x, en.y, spd);
        }
    } else 
    {
        hspeed = spd;
        vspeed = lerp(vspeed,0,0.1);
    }
    
    if spd < 3 spd += 0.2;   
}




depth = -1000;

if a = 1
{
    instance_create_depth(x,y,-1000,obj_sfx_dust_expl_small);
    instance_destroy();
}