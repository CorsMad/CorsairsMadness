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

fnc_boat_take_dmg_obstacle()

fnc_boat_take_dmg_pistol(0)
fnc_boat_take_dmg_fastshot(0,0)
fnc_boat_take_dmg_dual_pistol(0,0,0) 
fnc_boat_take_dmg_blunderbuss(0)
fnc_boat_take_dmg_parrotcage(0,0,0,0)
fnc_boat_take_dmg_cannon(0) 





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