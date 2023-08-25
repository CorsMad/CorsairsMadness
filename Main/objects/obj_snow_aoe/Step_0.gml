/// @description Insert description here
// You can write your code in this editor

if instance_exists(obj_Player)
{
    if place_meeting(x,y,obj_Player)   
    {
        if obj_Player.isDead = 0 
        {
            obj_Player.damage_cd = 0 || obj_Player.damage_cd > 30
            {
                obj_Player.isDead = 30;  
                var tp = instance_create_depth(obj_Player.x,obj_Player.y,obj_Player.depth,obj_snow_teleporter)
                tp.dest_x = dest_x;
                tp.dest_y = dest_y;
            }
        }
    }
}




