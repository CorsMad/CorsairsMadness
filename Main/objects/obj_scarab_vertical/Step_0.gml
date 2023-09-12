/// @description Insert description here
// You can write your code in this editor
#region Attack
if shocked = 0
{
    var dis = point_distance(x,y,obj_Player.x,obj_Player.y);
    if dis < 160 && trigger = 0 && instance_number(obj_scarab_mini) < 5
    {
        attack_timer = 1;
        trigger = 1
        
    }     
    
    
    if attack_timer != 0
    {
        attack_timer++;   
    }
    if attack_timer = 60
    {
        instance_create_depth(x,y,depth,obj_scarab_mini); 
        attack_timer = 0;
        trigger = 0;
    }
}
#endregion

#region movement
if state = 1
{
	if place_meeting(x,y+spd,obj_bird_limiter) || place_meeting(x,y+spd,obj_block)
	{
		spd = -spd;	
	}
	y+=spd;
    sprite_index = spr_scarab_big_fly;
	
}
#endregion

if instance_exists(obj_Player)
    {
        if obj_Player.x < x image_xscale = -1; 
        if obj_Player.x > x image_xscale = 1;
    }
    
#region Взаимодействие со стрелой

if shocked = 1
{
    t++;
    if t = 60 
    {
        shocked = 0;
        spd = choose(-1,1);
        t = 0;
    }
    sprite_index = spr_scarab_big_diz;
}


#endregion

#region #takedmg

// Атака

    fnc_take_dmg_hitbox(-10,0,-1,10,0,-1);

// Удар вниз   

    fnc_take_dmg_hitbox_down(0,-32,-1);
	
// Топор

    fnc_take_dmg_axe(-10,-16,-1,10,-16,-1,1);

// Бомба

    fnc_take_dmg_bomb(-10,-16,-1,10,-16,-1,1);

// Eball

	fnc_take_dmg_eball(0,-16,-1,1);

// Parrot

	fnc_take_dmg_parrot_laser(0,-16,-1,1)

// Получение урона

    fnc_enemy_no_armor_dmg();

if hit_cd = 2 spd = -spd;

#endregion

#region #hp

if enemy_hp < 1
{
	state = 2;
	var d = instance_create_depth(x,y,depth,obj_scarab_big_dead);
    d.image_xscale = image_xscale;
}

#endregion

#region death

if state = 2
{
	instance_create_depth(x,y,-1,obj_sfx_explosion);
	instance_destroy();
}

#endregion