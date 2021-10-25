/// @description Insert description here
// You can write your code in this editor

#region скорость анимации

#endregion

#region перемещение

x+=hspd;

 
#endregion

#region Получение урона

fnc_boat_destroyer();

fnc_boat_take_dmg_obstacle()

fnc_enemy_no_armor_dmg();

if enemy_hp < 2
{
    image_blend = c_red;
}

if enemy_hp<=0
{
    
    instance_create_depth(x+12,y+20,depth,obj_sfx_explosion);
    instance_create_depth(x+12,y+40,depth,obj_sfx_explosion);
    instance_create_depth(x+12,y+60,depth,obj_sfx_explosion);

    instance_destroy();   
}


#endregion