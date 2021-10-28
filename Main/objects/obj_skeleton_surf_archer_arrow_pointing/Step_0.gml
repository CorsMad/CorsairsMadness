/// @description Insert description here
// You can write your code in this editor
#region Взамиодействие с игроком

if instance_exists(obj_Player_boat)
{
    if place_meeting(x,y,obj_player_boat_hitbox) && obj_Player_boat.hit_cd = 0
    {
        obj_Player_boat.hit_cd = 1; 
        obj_Player_boat.hp -=1;
        instance_destroy();
    } 
}

#endregion
