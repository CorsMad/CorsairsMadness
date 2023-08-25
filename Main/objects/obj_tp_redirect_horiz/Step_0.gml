/// @description Insert description here
// You can write your code in this editor
switch(dir)
{
    case 0:sprite_index = spr_block_pos_tp_l;break;   
    case 1:sprite_index = spr_block_pos_tp_r;break;   
}


/*

0 - влево
1 - вправо

*/

if instance_exists(obj_teleport_cloud)
{
    if obj_teleport_cloud.vspd!= 0
    {
        if place_meeting(x,y,obj_teleport_cloud)
        {
            if abs(obj_teleport_cloud.y - (y+16)) <=2
            {   
                switch(dir)
                {
                    case 0:   
                        obj_teleport_cloud.spd = -2;   
                        obj_teleport_cloud.vspd = 0;
                        obj_teleport_cloud.y = y+16;
                        break;
                    case 1:   
                        obj_teleport_cloud.spd = 2;   
                        obj_teleport_cloud.vspd = 0;  
                        obj_teleport_cloud.y = y+16;
                        break;
                }                  
            }
        }
    }  
}
