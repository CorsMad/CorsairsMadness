/// @description Insert description here
// You can write your code in this editor

if state = 2
{
    x = boom.x;
    y = boom.y;
    if !instance_exists(boom) 
    {
        instance_destroy();
        var d = instance_create_depth(x,y,depth,obj_snakefast_death);
        if instance_exists(obj_Player)
        {
            if obj_Player.x < x d.hspd = 3;
            if obj_Player.x > x d.hspd = -3;
        
        }
    }
}
