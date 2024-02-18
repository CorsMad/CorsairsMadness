/// @description Insert description here
// You can write your code in this editor
#region коллиз
        
		if clouded = 0
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
1 - бег к игроку
2 - 3 атаки
3 - получение урона от атаки
4 - получение урона от дэша
5 - получение урона от облака
6 - получение урона от добиваний

*/

oleg++;
if oleg = 50{
   if state = -1 state = 1;
   oleg = 0;
}


if state = 0 || state = -1 // бег к игроку
{
    sprite_index = spr_molded_yellow_idle;
	if abs(obj_Player.x - x) < 200 
    {
        state = 1;	
    }
}

if state = 1 // бег к игроку
{
    if !place_meeting(x,y+1,obj_block)
    {
        image_speed = 0;
        sprite_index = spr_molded_yellow_jump;
        
        if vspd < -1 image_index = 0
        if vspd >= -1 && vspd <= -0.1 image_index = 1;
        if vspd > -0.1 image_index = 2 
    } else 
    {
        image_speed = 1.25;
		//sprite_index = spr_molded_yellow_run
		if hspd!= 0 
		{
			sprite_index = spr_molded_yellow_run;
			image_speed = 1;
			         
		} else
			{
				sprite_index = spr_molded_yellow_takedmg;
				image_index = 3;
				image_speed = 0;
			}
    }
    if hspd > 0 image_xscale = -1 
    if hspd < 0 image_xscale=1;
	hspd = fspd;
	if instance_exists(obj_Player)
	{
		if place_meeting(x,y+1,obj_block)
		{
			if obj_Player.x < x && abs(obj_Player.x - x) > 32
			{
				fspd = -3;
			}
		
			if obj_Player.x > x  && abs(obj_Player.x - x) > 32
			{
				fspd = 3;
			}	
			if collision_line(x,y-16,x+hspd*24,y-16,obj_block,false,false) vspd = -5;
			
			if ((abs(obj_Player.x - x) < 64) && (abs(obj_Player.y - y) < 8)) 
            {
                state = 2;hspd = 0;vspd = 0;fspd = 0;
                t = 0;
                //image_speed = 1;
                //image_index = 0;
                //sprite_index = spr_molded_yellow_attack
                if x > obj_Player.x image_xscale = 1;
                if x < obj_Player.x image_xscale = -1; 
            }
		}		
	}
}

if state = 2 //3 атаки
{
    sprite_index = spr_molded_yellow_attack;
	t++;
    image_speed = 0;
    
	       	        	
    if t = 110
    {
        state = 1;
        t = 0;
    }
    
    //anim
    switch(t)
    {
        case 1: image_index = 0;break;
        case 5: image_index = 1;break;
        case 10: image_index = 2;break;
        case 15: image_index = 3;break;
        case 20: image_index = 4;break;
        case 25: 
        image_index = 5;
        var hb1 = instance_create_depth(x,y,depth,obj_molded_yellow_run_hb1);
        hb1.image_xscale = image_xscale;
        break;
        case 30: image_index = 6;break;
        case 35: image_index = 7;break;
        case 40: image_index = 8;break;
        case 45: image_index = 9;break;
        case 50: image_index = 10;break;
        case 55: image_index = 11;break;
        case 60: image_index = 12;break; 
        case 65: image_index = 13;break;
        case 70: 
        image_index = 14;
        var hb2 = instance_create_depth(x,y,depth,obj_molded_yellow_run_hb2);
        hb2.image_xscale = image_xscale;
        break;
        case 75: image_index = 15;break;
        case 80: image_index = 16;break;
        case 85: image_index = 17;break; 
        case 90: image_index = 18;break; 
    }
}

#region получение урона#

if hit_cd!= 0  hit_cd++;
if hit_cd = 10 hit_cd = 0;

if hits_cd!= 0  hits_cd++;
if hits_cd = 10 hits_cd = 0;



if state!=3 && hit_cd > 0 && state!=6
{
    sprite_index = spr_molded_yellow_takedmg;
    image_index = 0;    
}

if state = 6
{
    if hit_cd!=0
    {
        sprite_index = spr_molded_yellow_takedmg;
        image_index = 0;
    } else if !place_meeting(x,y+1,obj_block)
        {
            sprite_index = spr_molded_yellow_death;
            image_index = 0;
        }
}

#region от добиваний

#region от обычного

if place_meeting(x,y,obj_hitbox_mask_finisher) && hit_cd = 0 && vulnerable = 1
{
    fnc_superattack_gain_specattack();
	clouded = 0;
	cloud_timer = 0;
	hit_cd = 1;
	vspd = -2;
    enemy_hp-=1;
	y-=1;
    t_red = 1;
    fnc_molded_blood_hit(1);
    hspd = sign(obj_Player.dir)*2;
	state = 6;
	t_recover = 1;
    if obj_Player.x < x 
        		{
        			instance_create_depth(x-10,y-16,-1,obj_sfx_weapon_slash);
        		} else instance_create_depth(x+10,y-16,-1,obj_sfx_weapon_slash);
}

#endregion

#region вперед
if place_meeting(x,y,obj_hitbox_mask_finisher_forward) && hit_cd = 0 && vulnerable = 1
{
    fnc_superattack_gain_specattack();
	clouded = 0;
	cloud_timer = 0;
	hit_cd = 1;
    t_red = 1;
	hit_cd = 1;
	vspd = -3;
    enemy_hp-=1;
	y-=1;
    fnc_molded_blood_forward(1);
    hspd = sign(obj_Player.dir)*5;
	state = 6;
	t_recover = 1;
    get_kicked = 1;
    if obj_Player.x < x 
        		{
        			instance_create_depth(x-10,y-16,-1,obj_sfx_weapon_slash);
        		} else instance_create_depth(x+10,y-16,-1,obj_sfx_weapon_slash);
}
#endregion

#region вверх
if place_meeting(x,y,obj_hitbox_mask_finisher_up) && hit_cd = 0 && vulnerable = 1
{
    fnc_superattack_gain_specattack();
	clouded = 0;
	cloud_timer = 0;
	hit_cd = 1;
	vspd = -6;
    t_red = 1;
    enemy_hp-=1;
	y-=1;
    hspd = 0;
    fnc_molded_blood_up(1);
	state = 6;
	t_recover = 1;
    if obj_Player.x < x 
        		{
        			instance_create_depth(x-10,y-16,-1,obj_sfx_weapon_slash);
        		} else instance_create_depth(x+10,y-16,-1,obj_sfx_weapon_slash);
}
#endregion

#region вниз
if place_meeting(x,y,obj_hitbox_mask_finisher_down) && hit_cd = 0 && vulnerable = 1
{
	if !place_meeting(x,y+1,obj_block) vspd = 4; else
	{
		vspd = -3;
		y-=1;
	}
    fnc_superattack_gain_specattack();
    get_bounced = 1;
	clouded = 0;
    enemy_hp-=1;
    t_red = 1;
	cloud_timer = 0;
	hit_cd = 1;
    hspd = 0;
    fnc_molded_blood_down(1);
	state = 6;
	t_recover = 1;
    if obj_Player.x < x 
        		{
        			instance_create_depth(x-10,y-16,-1,obj_sfx_weapon_slash);
        		} else instance_create_depth(x+10,y-16,-1,obj_sfx_weapon_slash);
}
#endregion

if state = 6
{
	clouded = 0;
	cloud_timer = 0;
	if !place_meeting(x,y+1,obj_block)
	{
		if get_kicked = 1
        {
            if place_meeting(x+1,y,obj_block) {hspd = -1;get_kicked = 0;}   
            if place_meeting(x-1,y,obj_block) {hspd = 1;get_kicked = 0;}   
        }
	} else {hspd =0;get_kicked = 0;}
    
   // if hspd!= 0 
	
    
    
	if place_meeting(x,y,obj_hitbox_mask) && hit_cd = 0 && vulnerable = 1 && !place_meeting(x,y+1,obj_block)
	{
		clouded = 0;
		cloud_timer = 0;
		vspd = -1.8;
		hit_cd = 1;
		if obj_Player.isGrounded = 0 
        {
            obj_Player.vspd = -1.8;
        }   
        if obj_Player.x < x 
        		{
        			instance_create_depth(x-10,y-16,-1,obj_sfx_weapon_slash);
        		} else instance_create_depth(x+10,y-16,-1,obj_sfx_weapon_slash);
	}
    
	if place_meeting(x,y,obj_hitbox_mask_dash) && hit_cd = 0 && vulnerable = 1
    {
    	hit_cd = 1;
    	obj_Player.image_index = 0;
        obj_Player.isRecoil = 1;
        obj_Player.vspd = -2;
        obj_Player.dashing_timer_count = 1;
        get_kicked = 1;
        fnc_molded_blood_forward(1)
        vspd = -3;
    	y-=1;
        hspd = sign(obj_Player.dir)*3;
    	state = 3;
        t = 0;
    	t_recover = 1;
        if obj_Player.x < x 
        		{
        			instance_create_depth(x-10,y-16,-1,obj_sfx_weapon_slash);
        		} else instance_create_depth(x+10,y-16,-1,obj_sfx_weapon_slash);
    }
		
	if place_meeting(x,y+1,obj_block) 
    {
        if get_bounced = 1 
        {
            get_bounced = 0;
            vspd = -2;
        } else {state = 3;t = 0; }
    }   
    
}

#endregion

#region от суперов

if hits_cd = 0 && (place_meeting(x,y,obj_hitbox_mask_superattack_h1) ||
place_meeting(x,y,obj_hitbox_mask_superattack_h2) || place_meeting(x,y,obj_hitbox_mask_superattack_aoe)){
    hits_cd = 1;
	clouded = 0;
	cloud_timer = 0;
	hit_cd = 1;
	vspd = -4;
    t_red = 1;
    enemy_hp-=10;
	y-=1;
    hspd = sign(obj_Player.dir)*4;
    fnc_molded_blood_up(1);
    fnc_molded_blood_up(1);
    fnc_molded_blood_forward(1);
    fnc_molded_blood_forward(1);
	state = 6;
	t_recover = 1;
    if obj_Player.x < x 
        		{
        			instance_create_depth(x-10,y-16,-1,obj_sfx_weapon_slash);
        		} else instance_create_depth(x+10,y-16,-1,obj_sfx_weapon_slash); 
}


var supermissle = instance_place(x,y,obj_hitbox_mask_superattack_missle) 
    if supermissle!=noone{
        supermissle.state = 1;
        fnc_molded_blood_forward(1);
        fnc_molded_blood_up(1);
        enemy_hp-=5;
    }
#endregion

#region от дэша
if place_meeting(x,y,obj_hitbox_mask_dash) && hit_cd = 0 && vulnerable = 1
{
    fnc_superattack_gain_attack_dash();
	clouded = 0;
	cloud_timer = 0;
	hit_cd = 1;
    get_kicked = 1;
    enemy_hp -=1;
    t_red = 1;
    fnc_molded_blood_forward(1);
	obj_Player.image_index = 0;
    obj_Player.isRecoil = 1;
    obj_Player.vspd = -2;
    obj_Player.dashing_timer_count = 1;
    vspd = -3;
	if place_meeting(x,y+1,obj_block) y-=1;
    hspd = sign(obj_Player.dir)*3;
	state = 3;
	t_recover = 1;
    if obj_Player.x < x 
        		{
        			instance_create_depth(x-10,y-16,-1,obj_sfx_weapon_slash);
        		} else instance_create_depth(x+10,y-16,-1,obj_sfx_weapon_slash);
}
#endregion

if state = 3 // после урона в воздухе
{
    if !place_meeting(x,y+1,obj_block)
    {
        if get_kicked = 1
        {
            if place_meeting(x+1,y,obj_block) {hspd = -1;get_kicked = 0;}   
            if place_meeting(x-1,y,obj_block) {hspd = 1;get_kicked = 0;}   
        }
    }
       
    sprite_index = spr_molded_yellow_takedmg;
	if place_meeting(x,y+1,obj_block)
	{
		if t_recover!= 0 t_recover++;

		hspd = 0;
        if t_recover >= 20 image_index = 2 else image_index = 1;
	} else image_index = 0;
    
	if t_recover = 30 
	{
		t_recover = 0;
		state = 1;
        t = 0;
        //image_index = 0;
	}
}

if state = 3.5
{
    sprite_index = spr_molded_yellow_takedmg;
    if (t_hit < 8 && t_hit > 0) image_index = 0 else image_index = 3;
	t_hit++;
	if t_hit = 20
	{	
        t = 0;

        
        if ((abs(obj_Player.x - x) < 64) && (abs(obj_Player.y - y) < 8)) 
            {
                state = 2;hspd = 0;vspd = 0;
                t = 0;
                
                //image_speed = 1;
                //image_index = 0;
                //sprite_index = spr_molded_yellow_attack
                if x > obj_Player.x image_xscale = 1;
                if x < obj_Player.x image_xscale = -1; 
                t_hit = 0;
            } else {state = 1;t_hit = 0;}
	}
}

if place_meeting(x,y,obj_hitbox_mask) && hit_cd = 0 && vulnerable = 1 && state != 6
{
	clouded = 0;
	cloud_timer = 0;
	hit_cd = 1;
    fnc_superattack_gain_attack_dash();
    t_red = 1;
    enemy_hp-=1;
    if obj_Player.x < x 
        		{
        			instance_create_depth(x-10,y-16,-1,obj_sfx_weapon_slash);
        		} else instance_create_depth(x+10,y-16,-1,obj_sfx_weapon_slash);
	if obj_Player.isGrounded = 0 
        {
            obj_Player.vspd = -1.8;
        }   
	if !place_meeting(x,y+1,obj_block) && hspd!=0
	{
		t_recover= 1;
		hspd = -hspd;	
		state = 3;
	}
	if place_meeting(x,y+1,obj_block) {state =3.5; t_hit = 0;}
}

#endregion

#region от облака

if place_meeting(x,y,obj_teleport_cloud)
{
	state = 5;	
}

if state = 5
{
    sprite_index = spr_molded_yellow_tpdmg;
    image_speed = 1;
	hspd = 0;
	vspd = 0;
	clouded = 1;
	cloud_timer ++;
	if cloud_timer = 100 
	{
		cloud_timer = 0;clouded = 0;state = 5.5;t=0;
	}
}

if state = 5.5
{
	t++;
	if !place_meeting(x,y+1,obj_block) 
	{
		sprite_index = spr_molded_yellow_jump;
		image_speed = 0;
		image_index = 2;
	} else 
	{
		sprite_index = spr_molded_yellow_idle;
		image_speed = 1;
	}
	if t = 50
	{
		t=0;
		state = 1;	
	}
}

if state = 5 cloud_cr.on = 1 else cloud_cr.on = 0;


#endregion

#region death
if enemy_hp <= 0
{
    fnc_molded_dark_essence_none();
    var d = instance_create_depth(x,y,depth,obj_molded_yellow_run_death);  
    d.image_xscale = image_xscale;
    instance_destroy();
}
#endregion

#region red
if t_red!=0
{
    t_red-=0.1;  
    image_blend = c_red;
}
if t_red<=0 t_red = 0;
if t_red = 0 image_blend = c_white;
#endregion
