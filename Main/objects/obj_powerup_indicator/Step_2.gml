/// @description Insert description here
// You can write your code in this editor
if instance_exists(obj_Player_boat)
{
    x = obj_Player_boat.x-24;
    y = obj_Player_boat.y-64;   
}


if instance_exists(obj_Player_boat)
{
    if obj_Player_boat.bonus_cd = obj_Player_boat.bonus_cd/3
    {
        image_index = 1;   
    }
    if obj_Player_boat.bonus_cd = obj_Player_boat.bonus_cd*(2/3)
    {
        image_index = 2;   
    }
    if obj_Player_boat.bonus_cd = obj_Player_boat.bonus_cd_max
    {
        instance_destroy();  
    }
}

