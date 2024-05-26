/// @description Insert description here
// You can write your code in this editor

switch(dir)
{
    case 0:sprite_index = spr_block_pos_tp_u;break;
    case 1:sprite_index = spr_block_pos_tp_d;break;
}

/*

0 - вверх
1 - вниз

*/

if instance_exists(obj_teleport_cloud)
{
    if obj_teleport_cloud.spd!= 0
    {
        if place_meeting(x,y,obj_teleport_cloud)
        {
            if abs(obj_teleport_cloud.x - x) <=2
            {   
                switch(dir)
                {
                    case 0:   
                        obj_teleport_cloud.spd = 0;   
                        obj_teleport_cloud.vspd = -3.5;  
                        obj_teleport_cloud.x = x;
                        break;
                    case 1:   
                        obj_teleport_cloud.spd = 0;   
                        obj_teleport_cloud.vspd = 3.5;  
                        obj_teleport_cloud.x = x;
                        break;
                }                  
            }
        }
    }  
}
