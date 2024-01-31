/// @description Insert description here
// You can write your code in this editor
#region Collision

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


#endregion


if !place_meeting(x,y+1,obj_block) vspd+=0.2;

/*
0 - хождение
1 - сворачивание + подготовка
2 - полет в сторону игрока + кдарение 
3 - отлет назад и переворот на спину
4 - переворот на спину
5 - переворот назад
6 - ожидание
7 - подлет от пружин
*/

switch(state){
    case 0:
        #region хождение
		sprite_index = spr_lizard_walk;
		image_speed = 1;
		if hspd!= 0 image_xscale = sign(hspd); 
		
		
        if place_meeting(x+sign(hspd)*2,y,obj_block)
        {
            hspd = -hspd;   
        }
		
        var dis = point_distance(x,y,obj_Player.x,obj_Player.y);
        if dis < 160 
        {
            state = 1;
            t = 0;
            hspd = 0; 
			sprite_index = spr_lizard_svor;image_speed = 0;image_index = 0;
        }  
        
        #endregion
        break;
    case 1:
        #region сворачивание + подготовка
        t++;
		if instance_exists(obj_Player){
			if obj_Player.x < x image_xscale = -1 else image_xscale = 1;	
		}
		if t > 40 && t mod 10 = 0  {
			var vfx = instance_create_depth(x,y,depth+1,obj_lizardball_vfx)
			vfx.hspd = -2*sign(image_xscale);
			vfx.image_xscale = sign(image_xscale);
		}
		
		switch(t){
			case 3:	image_index = 0.5;break;	
			case 5: sprite_index = spr_lizard_rotat;image_index = 0;image_speed = 1;break;
			case 30: image_speed = 1;break;
			case 60: image_speed = 2;break;
		}
        if t = 100 {
            if instance_exists(obj_Player)   {
                if obj_Player.x < x {
                    hspd = -3;
                    state = 2;
                    fnc_snd_play_onetime(snd_lizardball);
                    t = 0;
                } else {
                    hspd = 3;
                    state = 2;   
                    fnc_snd_play_onetime(snd_lizardball);
                    t = 0;
                }
            } else state = 0;
        }            
        #endregion
        break;
    case 2:
        #region полет в сторону игрока + удар
		
        if place_meeting(x+hspd,y,obj_block){
            y-=1; 
            vspd = -4;            
            hspd = -sign(hspd)*2;
            state = 3;
        }
        
        #endregion
        break;
    case 3:
        #region отлет назад и переворот на спину
		if place_meeting(x+hspd,y,obj_block) {
			if dmgd = 1 hspd = -sign(hspd) else hspd = -sign(hspd)*2		
		}
        if place_meeting(x,y+1,obj_block){
            hspd = 0;
            vspd = 0;
            state = 4;
			dmgd = 0;	
        }	
			
        #endregion
        break;
    case 4:
        #region переворот на спину
        t++;
        if t = 150 {
            t = 0;
            state = 5;
			image_index = 0;
			sprite_index = spr_lizard_turn;
			image_speed = 0;			
        } else {
			sprite_index = spr_lizard_stun;
			image_speed = 1;
		}
        #endregion
        break;
    case 5:
        #region переворот назад
        t++;
		if t = 5 {
			t = 0;state = 6;
			image_index = 1;
		}
        #endregion
        break;
    case 6:
        #region переворот назад
        t++;
		if t = 10 {
			sprite_index = spr_lizard_walk;
			image_index = 0;
			image_speed = 0;
		}
        if t = 50 {
            t = 0;
            var dis = point_distance(x,y,obj_Player.x,obj_Player.y);
            if dis < 160 
            {
                state = 1;
                t = 0;
                hspd = 0;
                vspd = 0;
            }   else {
                state = 0;				
			    hspd = choose(-1,1);
            }
        }
        #endregion
        break;
	case 7:
		#region подлет от пружин
		
		if place_meeting(x,y+1,obj_block){
			vspd = 0;
			hspd = 0;
			state = 4;
			t = 0;
		}
		#endregion
		break;
}


#region взаимодействие со всем

#region с пружинами
if place_meeting(x,y,obj_abil_boots_hitbox)
    {
		
		
        fnc_snd_play_onetime(snd_player_springboots);
        state = 3;
		sprite_index = spr_lizard_rotat;
		image_speed = 2;
		t = 0;
		if place_meeting(x,y+1,obj_block) vspd = -4; else vspd = 0;
        hspd = 0;
        obj_Player.vspd = -6;
        obj_Player.dash_counts = 1;
        if instance_exists(obj_abil_boots_hitbox)
        {
            with(obj_abil_boots_hitbox)
            {
                instance_create_depth(x,y+20,depth-1,obj_sfx4);
                instance_destroy(); 
            }
        }
    }

#endregion

// Атака

    #region Атака отдельно
	
	if (place_meeting(x,y,obj_hitbox)) && hit_cd = 0	
    {
		dmgd = 1;
		hit_cd = 1;
		enemy_hp -= 1;		
		if state = 2 {
			if obj_Player.x < x hspd = 3 else hspd = -3	
		} else if state < 2 {
			if obj_Player.x < x hspd = 3 else hspd = -3;
			vspd = -4;
			state = 3;
		}
        if obj_Player.x < x 
		{
			instance_create_depth(x-8,y-16,depth-1,obj_sfx_weapon_slash);
		} else instance_create_depth(x+8,y-16,depth-1,obj_sfx_weapon_slash);
	}
	
	#endregion
    
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


fnc_enemy_no_armor_dmg();


#region Смерть

if y >= room_height+64 instance_destroy();

if enemy_hp <= 0
{

    fnc_drop_mana_gold_after_death(30,45);
  
    instance_destroy();
    var d = instance_create_depth(x,y,depth,obj_llizardball_death);
    d.vspd = -3;
    if obj_Player.x<x d.hspd = 2; else d.hspd = -2;
}
#endregion
#endregion