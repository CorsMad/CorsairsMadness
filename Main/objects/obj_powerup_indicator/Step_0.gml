/// @description Insert description here
// You can write your code in this editor
if instance_exists(obj_Player_boat)
{
    if obj_Player_boat.bonus_cd = obj_Player_boat.bonus_cd_max/3
    {
        image_index = 1;   
    }
    if obj_Player_boat.bonus_cd = obj_Player_boat.bonus_cd_max*(2/3)
    {
        image_index = 2;   
    }
    if obj_Player_boat.bonus_cd = obj_Player_boat.bonus_cd_max
    {
        instance_destroy();  
    }
}

