/// @description Insert description here
// You can write your code in this editor

#region Перемещение

if place_meeting(x+hspd, y, obj_block)
		{
		while (!place_meeting(x+sign(hspd), y, obj_block )) 
		{
		    x+= sign(hspd);
		}
	
		hspd = -hspd;
	}
	x += hspd;

	if place_meeting(x, y+vspd, obj_block) 
	{
	    while (!place_meeting(x,y+sign(vspd), obj_block )) 
		{
	        y+= sign(vspd);
	    }
	    vspd = 0;
	}
	y += vspd;
    
    if hspd > 0 image_xscale = -1
    if hspd < 0 image_xscale = 1;
    
#endregion

#region ТАйамер атаки
    if attack_cd > 0 attack_cd-=0.1;
#endregion

#region Перемещение в броне
if state = 0 && instance_exists(obj_Player) && attack_cd = 0
{
    var dis = point_distance(x,y,obj_Player.x,obj_Player.y);
    if dis < 160 
    {
        state = 1;
        t = 0;
        hspd = 0;
        image_index = 0;
    }   
    sprite_index = spr_sh_walk;
}
#endregion

#region Подготовка к выстрелу
if state = 1
{
    t_anim++;
    sprite_index = spr_sh_hide;
    if t_anim = 10 
    {
        t_anim = 0;
        state = 2;
        image_index = 0;
    }
}
#endregion

#region Выстрел

if state = 2
{

    t++;
    //выстрел
    if t < 90
    {
        sprite_index = spr_sh_prepare;   
    }
    if t = 90
    {   
        sprite_index = spr_sh_attack;
        image_index = 0;
        var s1 = instance_create_depth(x,y-10,depth,obj_spikehedge_spike); // Поменять Y
        var s2 = instance_create_depth(x,y-10,depth,obj_spikehedge_spike);
        var s3 = instance_create_depth(x,y-10,depth,obj_spikehedge_spike);
        var s4 = instance_create_depth(x,y-10,depth,obj_spikehedge_spike);
        s1.hspd = -3;
        s1.vspd = 0;
        s2.hspd = -2;
        s2.vspd = -2;
        s2.image_angle = 315;
        s3.hspd = 2;
        s3.vspd = -2;
        s3.image_angle = 225;
        s4.hspd = 3;
        s4.vspd = 0;
        s4.image_angle = 180;
    }
    if t = 110
    {
        image_speed = 1;   
    }
    if t = 120
    {
        attack_cd = 10;
        state = 0;
        hspd = choose(-1,1);
        t = 0;
        sprite_index = spr_sh_walk;
    }
}

#endregion

#region Потеря брони

if instance_exists(obj_Player)
{
    if place_meeting(x,y,obj_abil_boots_hitbox) && armored = 1//obj_Player.bbox_bottom > bbox_top && armored = 1
    {
        var s5 = instance_create_depth(x,y-20,depth,obj_spikehedge_spike);
        s5.hspd = -3;
        s5.vspd = 0;
        var s6 = instance_create_depth(x,y-20,depth,obj_spikehedge_spike);
        s6.hspd = 3;
        s6.vspd = 0;
        armored = 0;
        state = 3;
        t = 0;
        hspd = 0;
        sprite_index = spr_sh_run;
        image_speed = 0;
        image_index = 4;
        obj_Player.vspd = -7;
        instance_create_depth(x,y,depth-1,obj_spikehedge_shell);
        with(obj_abil_boots_hitbox)
        {
            instance_create_depth(x,y+8,depth-1,obj_sfx4);
            instance_destroy(); 
        }
    }
    if place_meeting(x,y,obj_abil_boots_hitbox) && armored = 0
    {
        obj_Player.vspd = -7;
        with(obj_abil_boots_hitbox)
        {
            instance_create_depth(x,y+8,depth-1,obj_sfx4);
            instance_destroy(); 
        }
    }
}

if state = 3
{
    t++;
    // потеря брони
    // выстрел
    if t = 60
    {
        t = 0;
        armored = 0;
        state = 4;
        hspd = choose(-2,2);
        image_speed = 1;
    }
}

#endregion

#region Бег после потери брони

if state = 4
{
    attack_cd = 0;
    jump_cd ++;
    if jump_cd = 100 {vspd = -5;jump_cd = 0};
    if !place_meeting(x,y+1, obj_block)
    {
        vspd += 0.2;   
    }
    if !place_meeting(x,y+1,obj_block) sprite_index = spr_sh_jump;
    else sprite_index = spr_sh_run;
    image_speed = 2;
}

#endregion

#region Получение урона

if armored = 0
{
    
// Атака

    fnc_take_dmg_hitbox(-10,-16,-1,10,-16,-1);
    
// Топор

    fnc_take_dmg_axe(-10,-16,-1,10,-16,-1);
    
// Удар вниз   

    fnc_take_dmg_hitbox_down(0,-32,-1);

// Бомба
 
    fnc_take_dmg_bomb(-10,-16,-1,10,-16,-1);

// Получение урона

    fnc_enemy_no_armor_dmg();
      
    if hit_cd = 2 
    {
        if instance_exists(obj_Player)
        {
            if obj_Player.x < x hspd = 2 else hspd = -2;   
        }
    }
}

#endregion

#region Смерть

if enemy_hp <= 0
{
    instance_destroy();   
    instance_create_depth(x,y,depth,obj_spikehedge_death);
}
#endregion