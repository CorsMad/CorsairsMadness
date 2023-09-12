/// @description Insert description here
// You can write your code in this editor
if state = 0
{
    t++;
    if t = 100
    {
        t = 0;
        state = 1;
    }
}

if state = 1
{
    t1++;
    if t1 = 40  
	{
		var st1 = instance_create_depth(x,y+24,depth-1,obj_sfx_snow_boss1_steam_ph2);
        st1.fol = id;
        t1 = 0;
	}    
    if t1 = 42 t1 = 0;
    
#region Collision
if place_meeting(x+hspd, y, obj_skeleton_limiter)
	{
		hspd = -hspd;	
	}
	if place_meeting(x+hspd, y, obj_block)
		{
		while (!place_meeting(x+sign(hspd), y, obj_block )) 
		{
		    x+= sign(hspd);
		}
	
		hspd = -hspd;
	}
	x += hspd;
    
if place_meeting(x, y+vspd, obj_skeleton_limiter)
	{
		vspd = -vspd;	
	}
	if place_meeting(x, y+vspd, obj_block)
		{
		while (!place_meeting(x, y+sign(vspd), obj_block )) 
		{
		    y+= sign(vspd);
		}
	
		vspd = -vspd;
	}
	y += vspd;
#endregion

#region SFX

if place_meeting(x,y+1,obj_block) // снизу
{
    var i = instance_create_depth(x,y+16,depth-1,obj_sfx4);
}

if place_meeting(x,y-1,obj_block) // сверху
{
    var i = instance_create_depth(x,y-16,depth-1,obj_sfx4);
    i.image_yscale = -1;
}

if place_meeting(x+1,y,obj_block) // справа
{
    var i = instance_create_depth(x+32,y,depth-1,obj_sfx4);
    i.image_angle = 90;
}

if place_meeting(x-1,y,obj_block) // слева
{
    var i = instance_create_depth(x-32,y,depth-1,obj_sfx4);
    i.image_angle = -90;
}

#endregion






}
#region Получение урона

if hit_cd !=0 hit_cd++;
if hit_cd = 11 hit_cd = 0;

if t_red != 0 {image_blend = c_red;t_red++;}
if t_red = 5 {t_red = 0;image_blend = c_white;}

if place_meeting(x,y,obj_hitbox) && hit_cd = 0
{
    if enemy_hp > 7
    {
        if obj_Player.x < x     {hspd = 2  ;} 
        if obj_Player.x >= x    {hspd = -2 ;}  
        if obj_Player.y-16 > y  {vspd = -2 ;}
        if obj_Player.y-16 <= y {vspd = 2  ;}
    }
    if enemy_hp <= 7 && enemy_hp >=4
    {
        if obj_Player.x < x     {hspd = 3 ;} 
        if obj_Player.x >= x    {hspd = -3 ;}  
        if obj_Player.y-16 > y  {vspd = -3 ;}
        if obj_Player.y-16 <= y {vspd = 3 ;}
    }
    if enemy_hp < 4
    {
        if obj_Player.x < x     {hspd = 4 ;} 
        if obj_Player.x >= x    {hspd = -4 ;}  
        if obj_Player.y-16 > y  {vspd = -4 ;}
        if obj_Player.y-16 <= y {vspd = 4 ;}
    }
    enemy_hp -=1;
    hit_cd = 1;
    t_red = 1;
}
if place_meeting(x,y,obj_hitbox_down) && hit_cd = 0
{
    if enemy_hp > 7
    {
        if obj_Player.x < x     {hspd = 2  ;vspd = 2;} 
        if obj_Player.x >= x    {hspd = -2 ;vspd = 2;}  
    }
    if enemy_hp <= 7 && enemy_hp >=4
    {
        if obj_Player.x < x     {hspd = 3 ; vspd = 3;} 
        if obj_Player.x >= x    {hspd = -3 ;vspd = 3;}  
    }
    if enemy_hp < 4
    {
        if obj_Player.x < x     {hspd = 4 ; vspd = 4;} 
        if obj_Player.x >= x    {hspd = -4 ;vspd = 4;}  
    }
    enemy_hp -=1;
	obj_Player.isAttackingdown = 0;
    obj_Player.attackingdown_timer = 0;
    obj_Player.vspd = -5;   
    hit_cd = 1;
    t_red = 1;
}

// Топор

    fnc_take_dmg_axe(-10,0,-1,10,0,-1,1);

// Бомба

    fnc_take_dmg_bomb(-10,-16,-1,10,-16,-1,1);

// Eball

	fnc_take_dmg_eball(0,-16,-1,1);

// Parrot

	fnc_take_dmg_parrot_laser(0,-16,-1,1)

#endregion

#region death

if (enemy_hp<=0) {
    instance_destroy()
    instance_create_depth(x,y,depth,obj_boss_s1_phase2_1_death);
    t = 0;
}

#endregion