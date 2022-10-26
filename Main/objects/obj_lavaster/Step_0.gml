/// @description Insert description here
// You can write your code in this editor

#region Ожидание

if state = 0
{
    if instance_exists(obj_Player)
    {
        if abs(obj_Player.x - x) < 200 
        {
            state = 1;   
        }
    }
}

#endregion

#region Взлет

if state = 1
{
     if ((t mod 5 = 0) && t < 65) instance_create_depth(x+random_range(-8,8),y,depth-1,obj_lavaster_lava);
     y = lerp(y,heigh,0.05);
     t++;
     if t = 30 image_speed = 1;
     if t = 65 
     {
         image_speed = 0;
         sprite_index = spr_lavaster_fly;
     }
     if t = 100
     {
        t = 101;
        state = 2;
        if instance_exists(obj_Player) 
        {
            var dir = point_direction(x,y,obj_Player.x,obj_Player.y-16);
            hspeed = lengthdir_x(spd,dir);
            vspeed = lengthdir_y(spd,dir);
        }
        image_index = 0;
        sprite_index = spr_lavaster_attack;
        image_speed = 1;
     }
}

#endregion

#region  Полет в игрока

#endregion


#region Отлет

if state = 3 
{
    vspd += 0.2;
    y+=vspd;
    x+=hspd;
    
    if place_meeting(x,y,obj_block)
    {
        instance_destroy(); 
        instance_create_depth(x,y,depth-1,obj_sfx_dust_expl_small)
        var d1 = instance_create_depth(x,y,depth,obj_lavaster_death);
        var d2 = instance_create_depth(x,y,depth,obj_lavaster_death);
        var d3 = instance_create_depth(x,y,depth,obj_lavaster_death);
        d1.image_index = 0;
        d2.image_index = 1;
        d3.image_index = 2;
        d1.hspd = -2;
        d1.vspd = -2;
        d2.hspd = random_range(-1,1);
        d2.vspd = -3;
        d3.hspd = 2;
        d3.vspd = -2;
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
    instance_create_depth(x,y,depth-1,obj_sfx_dust_expl_small)
    var d1 = instance_create_depth(x,y,depth,obj_lavaster_death);
    var d2 = instance_create_depth(x,y,depth,obj_lavaster_death);
    var d3 = instance_create_depth(x,y,depth,obj_lavaster_death);
    d1.image_index = 0;
    d2.image_index = 1;
    d3.image_index = 2;
    d1.hspd = -2;
    d1.vspd = -2;
    d2.hspd = random_range(-1,1);
    d2.vspd = -3;
    d3.hspd = 2;
    d3.vspd = -2;
}
#endregion