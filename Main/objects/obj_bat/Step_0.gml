/// @description Insert description here
// You can write your code in this editor

if (state = 3) {
    image_speed = 0;
} else image_speed = 1;

if instance_exists(obj_Player)
{
    if obj_Player.x < x image_xscale = -1 else image_xscale = 1;    
}

#region ожидание
if state = 0
{
    var dis = point_distance(x,y,obj_Player.x,obj_Player.y);
    if dis < 160 {state = 1;sprite_index = spr_bat_fly;  }    
}
#endregion




#region полет в игрока
if state = 1
{
    if instance_exists(obj_Player) 
    {
        var dir = point_direction(x,y,obj_Player.x,obj_Player.y-16);         
    }

    hspeed = lengthdir_x(spd,dir);
    vspeed = lengthdir_y(spd,dir);
    
    if place_meeting(x,y,obj_Player)
    {
        state = 2;   
    }
}

if state = 2
{
    hspeed = hspeed;
    vspeed = vspeed;
    t++;
    if t = 50
    {
        spd = 1;
        t = 0;
        state = 1;
    }
}

#endregion

#region остановка от попадания бумерангом

if state = 3
{
    hspeed = 0;
    vspeed = 0;
    t++;
    if t = 20
    {
        t = 0;
        state = 1;
        spd = 1;
        boomer = 0;
    }
}
#endregion

#region #takedmg

// Атака

    fnc_take_dmg_hitbox(-10,0,-1,10,0,-1);
    
// Топор

    fnc_take_dmg_axe(-10,0,-1,10,0,-1);
    
// Удар вниз   

    fnc_take_dmg_hitbox_down(0,-16,-1);

// Получение урона

    fnc_enemy_no_armor_dmg();

#endregion

#region Смерть

if enemy_hp < 1 
{
    instance_destroy();   
}
#endregion