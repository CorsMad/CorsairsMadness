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

//fnc_boat_take_dmg_obstacle()

fnc_boat_take_dmg_pistol(1)
fnc_boat_take_dmg_fastshot(0.6,1.3)
fnc_boat_take_dmg_dual_pistol(0.75,1,1.25) 
fnc_boat_take_dmg_blunderbuss(0.6)
fnc_boat_take_dmg_parrotcage(1,1.25,1.25,1.25)
fnc_boat_take_dmg_cannon(4) 

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
    instance_create_depth(x+12,y+20-48,depth,obj_sfx_explosion);
    instance_create_depth(x+12,y+40-48,depth,obj_sfx_explosion);
    instance_create_depth(x+12,y+60-48,depth,obj_sfx_explosion);

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
        global.hp-=2;
        enemy_hp = 0;
    } 
}

#endregion


if hit_cd_master!=enemy_hp {
	hit_cd_master = enemy_hp;
	red = 1;
}

if red!=0 {red++;image_blend = c_red;}
if red>=5 red=0;
if red = 0 image_blend = c_white;