/// @description Insert description here
// You can write your code in this editor
#region коллиз
        

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

    #endregion
/*
0 - патруль
1 - преследование
2 - удар вперед
3 - отпрыг
4 - подлет от крыльев
5 - получение урона
*/

#region Anim
switch(state)
{
    case 0:
        image_speed = 1;
        sprite_index = spr_molded_blue_spearman_attack_idle;
        break;
    case 1:
    if hspd > 0 image_xscale = -1 else image_xscale = 1;
        if !place_meeting(x,y+1,obj_block)
        {
            sprite_index = spr_molded_blue_spearman_attack_jump;
            image_speed =0;
            if vspd < 0 image_index = 0 else image_index = 1;
        } else 
        {
            sprite_index = spr_molded_blue_spearman_attack_walk;
            image_speed = 2;
        }
        break;
    case 2: 
        
        switch(t)
        {
            case 1: sprite_index = spr_molded_blue_spearman_attack_idle;break;
            case 30: sprite_index = spr_molded_blue_spearman_attack_front;image_index = 0;image_speed = 0;break; 
            case 50: image_index = 1;break;   
            case 55: image_index = 2;break;   
            case 60: image_index = 3;break;   
            case 70: image_index = 0;break;   
        }
        break;
    case 2.5: 
        image_speed = 0;
        switch(t)
        {
            case 1: sprite_index = spr_molded_blue_spearman_attack_idle;break;
            case 30: sprite_index = spr_molded_blue_spearman_attack_up;image_index = 0;image_speed = 0;break; 
            case 50: image_index = 1;break;   
            case 55: image_index = 2;break;   
            case 60: image_index = 3;break;   
            case 70: image_index = 0;break;   
        }
        break;
    case 3:
        if !place_meeting(x,y+1,obj_block)
        {
            sprite_index = spr_molded_blue_spearman_attack_jump;
            image_speed =0;
            if vspd < 0 image_index = 0 else image_index = 1;
        } else {
            image_speed = 1;
            sprite_index = spr_molded_blue_spearman_attack_idle;   
        }
        break;
    case 5:
        image_speed = 0;
        if !place_meeting(x,y+1,obj_block)
        {            
            sprite_index = spr_molded_blue_spearman_attack_dmgground;            
            if hspd > 0 
            {
                if image_xscale = 1 image_index = 2; else image_index = 3;   
            }
            if hspd < 0 
            {
                if image_xscale = 1 image_index = 3; else image_index = 2;   
            }
            if hspd = 0
            {
                if vspd > 0 image_index = 0 else image_index = 1; 
            }
            
        } else
        {   sprite_index = spr_molded_blue_spearman_attack_getup;
            
            switch(t)
            {
                case 1: image_index = 0;break;
                case 35:image_index = 1;break;
                case 40:image_index = 2;break;
                case 45:image_index = 3;break;
            }
        }
        break;
}
#endregion


if state = 0
{
    if instance_exists(obj_Player)
    {
        if abs(obj_Player.x - x) < 180
        {
            state = 1;   
        }
    }
}

if state = 1 //преследование
{
    hspd = fspd;
    if instance_exists(obj_Player)
	{
		if place_meeting(x,y+1,obj_block)
		{
			if obj_Player.x < x && abs(obj_Player.x - x) > 32
			{
				fspd = -2;
			}
		
			if obj_Player.x > x  && abs(obj_Player.x - x) > 32
			{
				fspd = 2;
			}	
			if collision_line(x,y-16,x+fspd*24,y-16,obj_block,false,false) vspd = -5;
			
			if ((abs(obj_Player.x - x) < 64))// && (abs(obj_Player.y - y) < 8)) 
            {
                if abs(obj_Player.x-x) < 32 && (y-obj_Player.y) > 48 state = 2.5 else state = 2                
                fspd = 0;hspd = 0;vspd = 0;
                }
		}		
	}   
}

if state = 2 //удар вперед
{
    if t < 45 {
        if instance_exists(obj_Player)   {
            if x > obj_Player.x image_xscale = 1 else image_xscale = -1;  
        }
    }
    t++;
    if t = 50 
    {
        var hf = instance_create_depth(x,y,depth,obj_molded_snow_spearman_hitbox_f);
        hf.image_xscale = image_xscale;
    }
    
    if t = 100 {t=0;state = 3;hspd = sign(image_xscale)*3;y-=1;vspd = -4};
}
if state = 2.5 // удар вверх
{
    t++;
    if t = 50 
    {
        var hf = instance_create_depth(x,y,depth,obj_molded_snow_spearman_hitbox_u);
        hf.image_xscale = image_xscale;
    }
    if t = 100 {t=0;state = 3;hspd = sign(image_xscale)*3;y-=1;vspd = -4};
}
if state = 3 // отпрыг
{
    if place_meeting(x+hspd,y,obj_block) {hspd = -sign(hspd)*1;}
    if place_meeting(x,y+1,obj_block) {hspd=0;fspd=0;t++;}
    if t = 50 {t=0;state=1;hspd =0;fspd=0;vspd=0;}
}

#region подлет

if place_meeting(x,y,obj_doublejump)
{
    var cl = instance_create_depth(x,y,depth-1,obj_molded_lance_cloud);
    cl.fol = id;
    state = 5;
    vspd = -6;
    if!place_meeting(x,y-1,obj_block) y-=1;
    fspd = 0;
    hspd = 0;
    t = 0;
    bounce = 1;
}

#endregion

#region получение урона

if hit_cd!=0 hit_cd++;
if hit_cd=10 hit_cd=0;

if hits_cd!=0 hits_cd++;
if hits_cd=10 hits_cd=0;


if flip!=0 flip++;
if flip=10 flip=0;

if t_red!=0 {t_red++;image_blend = c_red;}
if t_red = 5 {t_red = 0;image_blend =c_white;}

if state = 5
{
    if place_meeting(x+hspd,y,obj_block) hspd = -sign(hspd)*1;
    if place_meeting(x,y+1,obj_block)
    {
        hspd = 0;fspd = 0;
        if bounce = 1 {vspd=-2;bounce=0;} else t++;
        if t = 50 {t=0;hspd=0;vspd=0;fspd=0;state=1;}
    }
}


#region добивания

if place_meeting(x,y,obj_hitbox_mask_finisher) && hit_cd = 0
{
    fnc_superattack_gain_specattack();
	hit_cd = 1;
    state = 5;
    enemy_hp-=1;
    t_red = 1;
	t = 0;
	hspd = sign(obj_Player.dir)*2;
    if!place_meeting(x,y-1,obj_block) y-=1;
    vspd = -3;
    fnc_molded_blood_hit(3);
}

if place_meeting(x,y,obj_hitbox_mask_finisher_up) && hit_cd = 0
{
    fnc_superattack_gain_specattack();
	hit_cd = 1;
	state = 5;
    t = 0;
	vspd = -5;
    bounce = 1;
    enemy_hp-=1;
    t_red = 1;
    fnc_molded_blood_up(3);
    if!place_meeting(x,y-1,obj_block) y-=1;
}

if place_meeting(x,y,obj_hitbox_mask_finisher_forward) && hit_cd = 0
{
    fnc_superattack_gain_specattack();
	hit_cd = 1;
	state = 5;
    t = 0;
	hspd = sign(obj_Player.dir)*4;
    if!place_meeting(x,y-1,obj_block) y-=1;
    vspd = -3;
    enemy_hp-=1;
    t_red = 1;
    fnc_molded_blood_forward(3);
}

if place_meeting(x,y,obj_hitbox_mask_finisher_down) && hit_cd = 0
{
    fnc_superattack_gain_specattack();
	hit_cd = 1;
    state = 5;
    t = 0;
    enemy_hp-=1;
    t_red = 1;
    if place_meeting(x,y+1,obj_block) vspd = -3 else {vspd = 3;bounce = 1;}    
    fnc_molded_blood_down(3);
}

#endregion

#region от Суперов

if hits_cd = 0 && (place_meeting(x,y,obj_hitbox_mask_superattack_h1) ||
place_meeting(x,y,obj_hitbox_mask_superattack_h2) || place_meeting(x,y,obj_hitbox_mask_superattack_aoe))
{
    hits_cd = 1;
	hit_cd = 1;
	state = 5;
    t = 0;
	hspd = sign(obj_Player.dir)*4;
    if!place_meeting(x,y-1,obj_block) y-=1;
    vspd = -3;
    enemy_hp-=10;
    t_red = 1;
    fnc_molded_blood_forward(3);
    fnc_molded_blood_forward(3);
    fnc_molded_blood_up(3);
    fnc_molded_blood_up(3);
}

var supermissle = instance_place(x,y,obj_hitbox_mask_superattack_missle) 
    if supermissle!=noone{
        supermissle.state = 1;
        fnc_molded_blood_forward(3);
        fnc_molded_blood_up(3);
        enemy_hp-=5;
    }
    
#endregion

if place_meeting(x,y,obj_hitbox_mask) && hit_cd=0
{
    hit_cd=1;
    fnc_superattack_gain_attack_dash();
    enemy_hp-=1;
    t_red = 1;
    if obj_Player.isGrounded = 0 
    {
        obj_Player.vspd = -1.4;
    }  
    if state = 5 {flip = 1;vspd=0;hspd = 0;}
    if obj_Player.x < x 
        		{
        			instance_create_depth(x-10,y-16,-1,obj_sfx_weapon_slash);
        		} else instance_create_depth(x+10,y-16,-1,obj_sfx_weapon_slash);
}

if place_meeting(x,y,obj_hitbox_mask_dash) && hit_cd=0
{
    enemy_hp-=1;
    fnc_superattack_gain_attack_dash();
    t_red = 1;
    fnc_molded_blood_forward(3);
    if!place_meeting(x,y-1,obj_block) y-=1;
    obj_Player.image_index = 0;
    obj_Player.isRecoil = 1;
    obj_Player.vspd = -2;
    obj_Player.dashing_timer_count = 1;
    hit_cd=1;
    t = 0;
    if state = 5 {hspd = sign(obj_Player.dir)*4;vspd=-2}
    if obj_Player.x < x 
        		{
        			instance_create_depth(x-10,y-16,-1,obj_sfx_weapon_slash);
        		} else instance_create_depth(x+10,y-16,-1,obj_sfx_weapon_slash);
}

#endregion

#region смерть
if enemy_hp <=0 {
    fnc_molded_dark_essence_none();
    var d = instance_create_depth(x,y,depth,obj_molded_snow_spearman_death)   ;
    d.image_xscale = image_xscale;
    instance_destroy();
}
if y > room_height+32 instance_destroy();
#endregion