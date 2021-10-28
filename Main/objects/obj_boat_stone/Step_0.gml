x -= 1;
depth = -y;
fnc_boat_destroyer();


#region Взамиодействие с игроком

if instance_exists(obj_Player_boat)
{
    if place_meeting(x,y,obj_player_boat_hitbox) && obj_Player_boat.hit_cd = 0
    {
        obj_Player_boat.hit_cd = 1; 
        obj_Player_boat.hp -=1;
    } 
}

#endregion