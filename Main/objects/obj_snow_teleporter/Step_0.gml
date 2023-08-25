/// @description Insert description here
// You can write your code in this editor

switch(state)
{
    case 0: // начало движение
    t++
    {
        if t=20
        {
            t = 0;
            state = 1;
            var dir = point_direction(x,y,dest_x,dest_y);
            hspeed = lengthdir_x(spd,dir);
            vspeed = lengthdir_y(spd,dir);

        }
    }
        break;
    case 1: // полет + сброс
        
        if point_distance(x,y,dest_x,dest_y) < spd
        {
            obj_Player.isDead = 0;
            state = 2;
        }
        break;
}

if instance_exists(obj_Player)
{
    depth = obj_Player.depth;   
}




