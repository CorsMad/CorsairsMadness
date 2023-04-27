/// @description Insert description here
// You can write your code in this editor

if (spd > 0 && !place_meeting(x+spd,y,obj_block)) || (spd < 0 && !place_meeting(x-spd,y,obj_block))
{
    x+=spd;   
}


t++;
if t > 25 && t < 60
{
    image_speed = 1;
    spd = 1*sign(image_xscale);
} else spd = 0;


#region Takedmg

// Атака

    fnc_take_dmg_hitbox(-10,0,-1,10,0,-1);
    
// Топор

    fnc_take_dmg_axe(-10,0,-1,10,0,-1);
    
// Удар вниз   

    fnc_take_dmg_hitbox_down(0,-16,-1);

// Получение урона

    fnc_enemy_no_armor_dmg();
    
#endregion

#region Death
if enemy_hp < 1
{
    var d = instance_create_depth(x,y,depth,obj_zombie_death);
    d.sprite_index = sprite_index;
    d.image_index = image_index;
    d.image_xscale = image_xscale;
    instance_destroy();
}
#endregion