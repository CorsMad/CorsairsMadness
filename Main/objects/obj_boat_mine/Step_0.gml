/// @description Insert description here
// You can write your code in this editor
depth = -y;
#region скорость анимации

#endregion

#region перемещение

x+=hspd;

if instance_exists(obj_Player_boat)
{
    if abs(x - obj_Player_boat.x) < 300
    {
        y = lerp(y,obj_Player_boat.y,0.01);
    }
}
 
#endregion

#region Получение урона

fnc_boat_destroyer();

fnc_boat_take_dmg_pistol(0,-16,-1,0,-16,-1);

fnc_enemy_no_armor_dmg();

if enemy_hp < 2
{
    image_blend = c_red;
}

if enemy_hp<=0
{
    instance_create_depth(x,y,depth,obj_boat_mine_dead);
    instance_destroy();   
}


#endregion

#region Взамиодействие с игроком

if instance_exists(obj_Player_boat)
{
    if place_meeting(x,y,obj_player_boat_hitbox) && obj_Player_boat.hit_cd = 0
    {
        obj_Player_boat.hit_cd = 1; 
        obj_Player_boat.hp -=1;
        enemy_hp = 0;
    } 
}

#endregion