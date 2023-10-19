/// @description Insert description here
// You can write your code in this editor

/*
0 - появление
1 - ожидание
2 - полет влево по кругу + стрельба
3 - отдых
4 - Подготовка к 2

*/


x += hspd;
y += vspd;

#region 0 - появление

if state = 0
{
    t1++;
    if t1 mod 40 == 0 
	{
		var st1 = instance_create_depth(x,y,depth-1,obj_sfx_desert_boss1_steam);
        st1.fol = id;
	}
        
    hspd =- 1;
    if x <= 416 
    {
        x = 416;
        hspd = 0;
        state = 1;
        t1 = 0;
    }
}
#endregion

#region 1 - ожидание

if state = 1
{
    t++;
    if t = 10
    {
        var exm = instance_create_depth(x,y-64,depth-1,obj_desert_boss1_excl_mark)   ;
        exm.fol = id;
    }
    if t = 100
    {
        t = 0;
        state = 2;
    }
}

#endregion

#region 2 - полет влево по кругу + стрельба

if state = 2
{
    t1++;
    if t1 mod 40 == 0 
	{
		var st1 = instance_create_depth(x,y,depth-1,obj_sfx_desert_boss1_steam);
        st1.fol = id;
	}
    
    
    t++;
    if (((t mod 70 = 0) && t < 600 ) || t = 1 ) instance_create_depth(x,y,depth-1,obj_boss1_big_projectile_creator);
    
    if t = 700
    {
        t = 0;
        state = 3;
        t1 = 0;
    }
}
#endregion

#region 3 - ожидание

if state = 3
{
    t1++;
    if t1 mod 20 = 0 instance_create_depth(x+random_range(-16,16),y+random_range(0,-16),depth-1,obj_sfx_boss1_stars);  
    if t1 mod 40 == 0 
	{
		var st1 = instance_create_depth(x,y,depth-1,obj_sfx_desert_boss1_steam);
        st1.fol = id;
	}
    t++;
    if t = 100
    {
        t = 0;
        state = 4;
    }
}

#endregion

#region 4 - подготовка к 2
if state = 4
{
    t++;
    if t = 10
    {
        var exm = instance_create_depth(x,y-64,depth-1,obj_desert_boss1_excl_mark)   ;
        exm.fol = id;
    }
    if t = 100
    {
        t = 0;
        state = 2;
    }   
}

#endregion

#region Переход на след фазу

if enemy_hp <= 0 
{
    instance_destroy();
    instance_create_depth(x,y,depth,obj_boss_l1_1_death);    
}

#endregion

#region takedmg
     // Атака

    fnc_take_dmg_hitbox(-10,0,-1,10,0,-1);
    
// Топор

    fnc_take_dmg_axe(-10,0,-1,10,0,-1,0);
    
// Удар вниз   

    fnc_take_dmg_hitbox_down(0,-16,-1);

// Бомба

    fnc_take_dmg_bomb(-10,-16,-1,10,-16,-1,0);

// Eball

	fnc_take_dmg_eball(0,-16,-1,0);

// Parrot

	fnc_take_dmg_parrot_laser(0,-16,-1,0)
    

// Получение урона

    fnc_enemy_no_armor_dmg();
#endregion




