/// @description Insert description here
// You can write your code in this editor
depth = -y;
#region скорость анимации

#endregion

#region перемещение

x+=hspd;
 
#endregion

#region Получение урона

fnc_boat_destroyer();

#endregion

#region Взамиодействие с игроком

if instance_exists(obj_Player_boat)
{
    if place_meeting(x,y,obj_player_boat_hitbox) && obj_Player_boat.hit_cd = 0
    {
        fnc_snd_play_over(snd_item_bomb_explosion);
        obj_Player_boat.hit_cd = 1; 
        global.hp-=2;
    } 
}

#endregion