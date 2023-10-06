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

fnc_boat_take_dmg_pistol(1)

fnc_boat_take_dmg_dual_pistol(0.4,0.6,0.8) 

fnc_boat_take_dmg_cannon(10) 

fnc_boat_take_dmg_parrotcage(1,1.4,1.8,2)

fnc_boat_take_dmg_blunderbuss(0.5)

fnc_boat_take_dmg_fastshot(0.5,1)

fnc_enemy_no_armor_dmg();
/*
if enemy_hp < 2
{
    image_blend = c_red;
}
*/
if enemy_hp<=0
{
    fnc_snd_play_over(snd_item_bomb_explosion);
    instance_create_depth(x+12,y+20,depth,obj_sfx_explosion);
    instance_create_depth(x+12,y+50,depth,obj_sfx_explosion);
    instance_create_depth(x+12,y+80,depth,obj_sfx_explosion);
    instance_create_depth(x+12,y+110,depth,obj_sfx_explosion);
    instance_create_depth(x+12,y+140,depth,obj_sfx_explosion);
    instance_destroy();   
}


#endregion

#region Взамиодействие с игроком

if instance_exists(obj_Player_boat)
{
    if place_meeting(x,y,obj_player_boat_hitbox) && obj_Player_boat.hit_cd = 0
    {
        fnc_snd_play_over(snd_item_bomb_explosion);
        obj_Player_boat.hit_cd = 1; 
        global.hp-=1;
        enemy_hp = 0;
    } 
}

#endregion