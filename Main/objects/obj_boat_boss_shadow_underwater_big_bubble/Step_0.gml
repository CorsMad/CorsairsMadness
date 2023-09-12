/// @description Insert description here
// You can write your code in this editor
x-=0.5;
y+=vspd;
vspd = lerp(vspd,0,0.1);
depth = -y;
#region Попадание

fnc_boat_take_dmg_pistol(1)

fnc_boat_take_dmg_dual_pistol(0.4,0.6,0.8) 

fnc_boat_take_dmg_cannon(10) 

fnc_boat_take_dmg_parrotcage(1,1.4,1.8,2)

fnc_boat_take_dmg_blunderbuss(0.5)

fnc_boat_take_dmg_fastshot(0.5,1)

if enemy_hp <=0
{
    instance_create_depth(x,y+40,depth,obj_boat_boss_shadow_underwater_big_bubble_death);
    instance_destroy();   
}

#endregion   

#region Взамиодействие с игроком

if instance_exists(obj_Player_boat)
{
    if place_meeting(x,y,obj_player_boat_hitbox) && obj_Player_boat.hit_cd = 0
    {
        obj_Player_boat.hit_cd = 1;
		global.hp-=1;
    } 
}

#endregion