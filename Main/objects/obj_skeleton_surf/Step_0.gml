/// @description Insert description here
// You can write your code in this editor

#region скорость анимации

if hspd >= -1
{
    image_speed = 0.5;   
}
if hspd < -1 && hspd > -1.5
{
    image_speed = 1;   
}
if hspd < -2
{
    image_speed = 1.5;   
}


#endregion

#region перемещение

x+=hspd
if hspd > -2 
{
    hspd-=0.1;
}   
#endregion

#region Получение урона
fnc_boat_destroyer();

fnc_boat_take_dmg_pistol(0,-16,-1,0,-16,-1);

fnc_enemy_no_armor_dmg();

if enemy_hp<=0
{
    instance_create_depth(x,y,depth,obj_skeleton_surf_dead);
    instance_destroy();   
}

#endregion