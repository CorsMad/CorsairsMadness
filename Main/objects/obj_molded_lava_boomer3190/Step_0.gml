/// @description Insert description here
// You can write your code in this editor
#region коллиз
        
if state !=5
{
	if place_meeting(x+hspd, y, obj_block)
	{
	    while (!place_meeting(x+sign(hspd), y, obj_block )) 
	    {
	        x+= sign(hspd);
	    }
	    hspd = 0;   
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

	if !place_meeting(x,y+vspd, obj_block) && flip = 0
	{
	    vspd +=0.2;	
	}    
}
		
#endregion
/*
0 - патруль
1 - передвижение
2 - выстрел
3 - ожидание
4 - прыжок от dash
5 - несение от Dash
8 - урон от атак
9 - урон от дэша
10 - подстан
*/

#region anim
switch(state)
{
    case 0:
        sprite_index = spr_molded_desert_boomer_idle;
        image_speed = 1;
        break;
    case 1:
        sprite_index = spr_molded_desert_boomer_jump;
        image_speed =0 ;
        if hspd > 0 image_xscale = -1 else image_xscale = 1; 
        if vspd > 0 image_index = 2 else image_index = 1;
        break;
    case 2:
        sprite_index = spr_molded_desert_boomer_throw;
        image_speed = 0;
        if obj_Player.x < x image_xscale = 1 else image_xscale = -1;
        switch(t)
        {
            case 1:image_index = 0;break;
            case 5:image_index = 1;break;
            case 10:image_index = 2;break;
            case 30:image_index = 3;break;
            case 35:image_index = 4;break;
            case 40:image_index = 5;break;
            case 45:image_index = 6;break;
            case 50:image_index = 7;break;
            case 55:image_index = 8;break;          
        }
        break;
    case 3:
        sprite_index = spr_molded_desert_boomer_jump;
        image_speed =0 ;
        image_index = 0;
        break;
    case 3.5:
        sprite_index = spr_molded_desert_boomer_jump;
        image_speed =0 ;
        if vspd < 0 image_index = 1; else image_index = 2;
        break;
    case 5:
        if instance_exists(obj_Player)
        {
            sprite_index = spr_molded_desert_boomer_getdash
            image_speed = 0;
            if obj_Player.fspd > 0 image_xscale = 1 else image_xscale = -1;
        }
        break;
    case 10:
        //sprite_index = spr_molded_desert_boomer_takedmggr;
        //image_speed = 0;
        //if hit_cd !=0 image_index = 0 else image_index = 1;
        break;
        
}
#endregion

if place_meeting(x,y+1,obj_block) isGrounded = 1 else isGrounded = 0;

oleg++;
if oleg = 50{
   if state = -1 {
       state = 1;
   }
   oleg = 0;
}


if state = 0 //патруль
{
	if instance_exists(obj_Player)
    {
        if abs(obj_Player.x-x) <  128 
        {
            state = 1;   
        }
    }
}

if state = 1 // передвижение
{
	t++;
	hspd = fspd;
	if place_meeting(x,y+1,obj_block)
	{
		fspd = choose(-4,-3,-2,2,3,4);
		vspd = choose(-4,-5,-6);
	}
	if t > 200 && place_meeting(x,y+1,obj_block)
	{
		t = 0;
		state = 2;
		fspd = 0;
		vspd = 0;
		hspd = 0;
	}
}

if state = 2 // выстрел
{
	if t < 120 t++;
	if t = 50 
	{
		var i = instance_create_depth(x,y-16,depth-1,obj_molded_lava_boomer_projectile);
		i.origin = id;
		grab = 0;
	}
	if t >= 100 && grab = 1
	{
		t = 0;
		state = 1;
	}
}

#region подпрыг от дэша

if instance_exists(obj_Player)
{
	if obj_Player.superdash_timer >= 30
	{
		if (abs(obj_Player.y-y) < 64) && place_meeting(x,y+1,obj_block) && state!=3 && (abs(obj_Player.x-x)>64) && state!=2
		{
			t = 0;
			fspd = 0;
			hspd = 0;
			vspd = 0;
			state = 3;	
		}
	}
}


if state = 3 // прыжок
{
	if obj_Player.isDead = 12 && place_meeting(x,y+1,obj_block)
	{
		vspd = -8;
		y-=1;
		state = 3.5;
	}
	if obj_Player.superdash_timer = 0 && obj_Player.isDead!=12 
	{
		state = 1;	
	}
}

if state = 3.5 
{
	if place_meeting(x,y+1,obj_block)
	{
		if obj_Player.isDead!=12 state = 1; else state = 3;	
	}
}
#endregion

#region несение от superdash

if state!=5 && place_meeting(x,y,obj_hitbox_mask_superdash)
{
	state = 5;
	fspd = 0;
	hspd = 0;
	vspd = 0;
	t = 0;
}

if state = 5 
{
	x = obj_Player.x;	
	y = obj_Player.y;	
	if !instance_exists(obj_hitbox_mask_superdash)
	{
        fnc_snd_play_onetime(snd_follower_ground_hit);
		state = 10;
		instance_create_depth(x,y-32,depth-1,obj_sfx_dust_expl_big)
        if !place_meeting(x,y-1,obj_block) y-=1;
		if obj_Player.dir = 1 hspd = choose(-2,-1.5,-1) else hspd = choose(1,1.5,2);
		vspd = choose(-6,-5,-4);		
	}
}

#endregion


if state = 10 // подстан
{
	
	sprite_index = spr_molded_desert_boomer_getup;
	image_speed = 0;
	if !place_meeting(x,y+5,obj_block) image_index = 3 else {
		if t < 80 image_index = 2 ;
		if t >=80 image_index = 2;
		//if t >=80 && t < 90 image_index = 2;
		//if t >=90 image_index = 2;
	}
	
    if place_meeting(x+hspd,y,obj_block) {hspd = -sign(hspd)*1;vspd = -1;}
	//if bounce = 1
	//{
	//	bounce=0;	
	//	vspd = -4;
	//}
	if place_meeting(x,y+1,obj_block)
	{		
		if bounce = 1 {
			bounce = 0;	
			vspd = -3;
			hspd = 0;
		} else {			
			hspd = 0;
			fspd = 0;
			t++;
			if t = 100 {t=0;state=1;}
		}
	}
}



#region получение урона
if hit_cd!=0 hit_cd++;
if hit_cd=10 hit_cd=0;

if hits_cd!=0 hits_cd++;
if hits_cd=10 hits_cd=0;

if flip!=0 flip++;
if flip=10 flip=0;

if t_red!=0 {t_red++;image_blend = c_red;}
if t_red = 5 {t_red=0;image_blend = c_white;}

#region Добивания

if place_meeting(x,y,obj_hitbox_mask_finisher) && hit_cd = 0
{
    fnc_superattack_gain_specattack();
	hit_cd = 1;
	t = 0;
	bounce = 1;
	if state!=10 state = 10;
	fspd = 0;
	hspd = sign(obj_Player.dir)*2;
	vspd = -2;
    enemy_hp-=1;
    t_red = 1;
    fnc_molded_blood_hit(4);
    if obj_Player.x < x 
        		{
        			instance_create_depth(x-10,y-16,-1,obj_sfx_weapon_slash);
        		} else instance_create_depth(x+10,y-16,-1,obj_sfx_weapon_slash);
    instance_create_depth(x,y-16,depth-1,obj_sfx_weapon_slash);
}

if place_meeting(x,y,obj_hitbox_mask_finisher_up) && hit_cd = 0
{
    fnc_superattack_gain_specattack();
	hit_cd = 1;
	t = 0;
	if state!=10 state = 10;
	fspd = 0;
	hspd = 0;
	vspd = -4;
	bounce = 1;
    enemy_hp-=1;
    t_red = 1;
    fnc_molded_blood_up(4);
    if obj_Player.x < x 
        		{
        			instance_create_depth(x-10,y-16,-1,obj_sfx_weapon_slash);
        		} else instance_create_depth(x+10,y-16,-1,obj_sfx_weapon_slash);
    instance_create_depth(x,y-16,depth-1,obj_sfx_weapon_slash);
}

if place_meeting(x,y,obj_hitbox_mask_finisher_forward) && hit_cd = 0
{
    fnc_superattack_gain_specattack();
	hit_cd = 1;
	t = 0;
	if state!=10 state = 10;
	fspd = 0;
	hspd = sign(obj_Player.dir)*4;
	vspd = -1;
	bounce = 1;
    enemy_hp-=1;
    t_red = 1;
    fnc_molded_blood_forward(4);
    if obj_Player.x < x 
        		{
        			instance_create_depth(x-10,y-16,-1,obj_sfx_weapon_slash);
        		} else instance_create_depth(x+10,y-16,-1,obj_sfx_weapon_slash);
    instance_create_depth(x,y-16,depth-1,obj_sfx_weapon_slash);
}

if place_meeting(x,y,obj_hitbox_mask_finisher_down) && hit_cd = 0
{
    fnc_superattack_gain_specattack();
	hit_cd = 1;
	t = 0;
	if state!=10 state = 10;
	fspd = 0;
	hspd = 0;
	if !place_meeting(x,y+1,obj_block) vspd = 6; else vspd = -2;
	bounce = 1;
    enemy_hp-=1;
    t_red = 1;
    fnc_molded_blood_down(4);
    if obj_Player.x < x 
        		{
        			instance_create_depth(x-10,y-16,-1,obj_sfx_weapon_slash);
        		} else instance_create_depth(x+10,y-16,-1,obj_sfx_weapon_slash);
    instance_create_depth(x,y-16,depth-1,obj_sfx_weapon_slash);
}


#endregion

#region от суперов

if hits_cd = 0 && (place_meeting(x,y,obj_hitbox_mask_superattack_aoe) ||
place_meeting(x,y,obj_hitbox_mask_superattack_h1) || place_meeting(x,y,obj_hitbox_mask_superattack_h2)) {
    hits_cd = 1;
	hit_cd = 1;
	t = 0;
	if state!=10 state = 10;
	fspd = 0;
	hspd = sign(obj_Player.dir)*4;
	vspd = -1;
	bounce = 1;
    enemy_hp-=10;
    t_red = 1;
    if obj_Player.x < x 
        		{
        			instance_create_depth(x-10,y-16,-1,obj_sfx_weapon_slash);
        		} else instance_create_depth(x+10,y-16,-1,obj_sfx_weapon_slash);
    fnc_molded_blood_forward(4);
    fnc_molded_blood_forward(4);
    fnc_molded_blood_up(4);
    fnc_molded_blood_up(4);
    instance_create_depth(x,y-16,depth-1,obj_sfx_weapon_slash);   
}

var supermissle = instance_place(x,y,obj_hitbox_mask_superattack_missle) 
    if supermissle!=noone{
        supermissle.state = 1;
        fnc_molded_blood_forward(4);
        fnc_molded_blood_up(4);
        enemy_hp-=5;
    }
    
#endregion


//Dash

if place_meeting(x,y,obj_hitbox_mask_dash) && hit_cd = 0
{
    if obj_Player.x < x 
        		{
        			instance_create_depth(x-10,y-16,-1,obj_sfx_weapon_slash);
        		} else instance_create_depth(x+10,y-16,-1,obj_sfx_weapon_slash);
    fnc_superattack_gain_attack_dash();
	hit_cd = 1;
    t = 0;
	if state!=10 state = 10;
	fspd = 0;
	hspd = sign(obj_Player.dir)*4;
	vspd = -4;
	bounce = 1;
	obj_Player.image_index = 0;
    obj_Player.isRecoil = 1;
    obj_Player.vspd = -1;
    obj_Player.dashing_timer_count = 1;
	if state = 10 {vspd = -1;hspd = sign(obj_Player.dir)*4;t = 0}; else
	if !place_meeting(x,y+1,obj_block) fspd = sign(obj_Player.dir)*4
    enemy_hp-=1;
    t_red = 1;
    instance_create_depth(x,y-16,depth-1,obj_sfx_weapon_slash);
	
}



//Атака

if place_meeting(x,y,obj_hitbox_mask) && hit_cd=0
{
    if obj_Player.x < x 
        		{
        			instance_create_depth(x-10,y-16,-1,obj_sfx_weapon_slash);
        		} else instance_create_depth(x+10,y-16,-1,obj_sfx_weapon_slash);
    fnc_superattack_gain_attack_dash();
	hit_cd = 1;
	flip = 1;
	if obj_Player.isGrounded = 0 
    {
        //obj_Player.vspd = -1.2;
        obj_Player.vspd = -1.8;
    }  
    enemy_hp-=1;
    t_red = 1;
    instance_create_depth(x,y-16,depth-1,obj_sfx_weapon_slash);
	if state=10 {hspd=0;fspd=0;t = 0;vspd= 0;}
}


#endregion


#region смерть

if enemy_hp <=0
{
    fnc_molded_dark_essence_none();
    var d = instance_create_depth(x,y,depth,obj_molded_lava_boomer_death);
    d.image_xscale = image_xscale;
    instance_destroy();   
}

if y > room_height+32 enemy_hp = 0

#endregion