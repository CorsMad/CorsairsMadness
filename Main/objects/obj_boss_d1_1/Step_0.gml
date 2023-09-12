/// @description Insert description here
// You can write your code in this editor

/*
0 - появление
1 - ожидание
2 - полет влево по кругу + стрельба
3 - ожидание
4 - полет вправо по кругу + стрельба
5 - ожидание
6 - полет влево быстро
7 - ожидание
8 - полет вправо медленно + отдых
9 - ожидание -> 2
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
    if (((t mod 70 = 0) && t < 270 ) || t = 1 ) instance_create_depth(x,y,depth-1,obj_boss1_big_projectile_creator);
    
    if t = 280
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
    t++;
    if t = 10
    {
        var exm = instance_create_depth(x,y-64,depth-1,obj_desert_boss1_excl_mark)   ;
        exm.fol = id;
    }
    if t = 100
    {
        t = 0;
        state = 4;
    }
}

#endregion

#region 4 - полет вправо по кругу + стрельба

if state = 4
{
    t1++;
    if t1 mod 40 == 0 
	{
		var st1 = instance_create_depth(x,y,depth-1,obj_sfx_desert_boss1_steam);
        st1.fol = id;
	}
    
    t++;
    if (((t mod 70 = 0) && t < 270 ) || t = 1 ) instance_create_depth(x,y,depth-1,obj_boss1_big_projectile_creator);
    if t = 280
    {
        t = 0;
        state = 5;
        t1 =0 ;
    }
}

#endregion

#region 5 - ожидание

if state = 5
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
        state = 6;
    }
}
#endregion

#region 6 - полет влево быстро

if state = 6
{
    hspd = -3;
    if x <= 64 
    {
        x = 64;
        hspd = 0;
        state = 7;
    }
}

#endregion

#region 7 - ожидание

if state = 7
{
    t1++;
    if t1 mod 20 = 0
    {
        instance_create_depth(x+random_range(-16,16),y+random_range(0,-16),depth-1,obj_sfx_boss1_stars);   
    }    
     
    t++;
    if t = 50
    {
        state = 8;
        t = 0;
        t1 =0 ;
    }
}

#endregion

#region 8 - полет вправо медленно + отдых

if state = 8
{
    t1++;
    if t1 mod 20 = 0 instance_create_depth(x+random_range(-16,16),y+random_range(0,-16),depth-1,obj_sfx_boss1_stars);  
    if t1 mod 40 == 0 
	{
		var st1 = instance_create_depth(x,y,depth-1,obj_sfx_desert_boss1_steam);
        st1.fol = id;
	}
    
    hspd=1;
    if x >= 416
    {
        x = 416;
        hspd = 0;
        state = 9;
        t1 = 0;
    }
}

#endregion

#region 9 - ожидание -> 2

if state = 9
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
    instance_create_depth(x,y,depth,obj_boss_d1_1_death);    
}

#endregion

#region Песок

t_sand++;
if t_sand = 5
{
    instance_create_depth(x+random_range(-30,30),y+random_range(0,24),depth+1,obj_boss1_d1_sand);
    t_sand = 0;
}

#endregion

#region получение урона
 // Атака

    fnc_take_dmg_hitbox(-10,0,-1,10,0,-1);
    
// Топор

    fnc_take_dmg_axe(-10,0,-1,10,0,-1,1);
    
// Удар вниз   

    fnc_take_dmg_hitbox_down(0,-16,-1);

// Бомба

    fnc_take_dmg_bomb(-10,-16,-1,10,-16,-1,1);

// Eball

	fnc_take_dmg_eball(0,-16,-1,1);

// Parrot

	fnc_take_dmg_parrot_laser(0,-16,-1,1)
    

// Получение урона

    fnc_enemy_no_armor_dmg();
#endregion


