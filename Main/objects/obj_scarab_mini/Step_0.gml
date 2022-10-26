/// @description Insert description here
// You can write your code in this editor

if state = 0
{
    if instance_exists(obj_Player) 
    {
        var dir = point_direction(x,y,obj_Player.x,obj_Player.y-16);         
    }

    hspeed = lengthdir_x(spd,dir);
    vspeed = lengthdir_y(spd,dir);
    
    if place_meeting(x,y,obj_Player)
    {
        state = 1;   
    }
}

if state = 1
{
    hspeed = hspeed;
    vspeed = vspeed;
    t++;
    if t = 50
    {
        t = 0;
        state = 0;
    }
}

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

if hspeed > 0 image_xscale = -1;
if hspeed < 0 image_xscale = 1;


#region Смерть

if enemy_hp < 1 || place_meeting(x,y,obj_scarab_nest_electr_mask)
{
    var d = instance_create_depth(x,y,depth,obj_scarab_mini_dead);
    d.image_xscale = image_xscale;
    instance_destroy();   
}
#endregion