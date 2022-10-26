fnc_Collision(obj_block);

#region Wait

if isWait = 1
{
	sprite_index = spr_diagonal_slime_wait;
	if (image_index > image_number - 1) {
		image_speed = 0 ;
	} else image_speed = 1;
	if place_meeting(x,y+1,obj_block)
	{
		image_angle = 0;	
	}
	if place_meeting(x,y-1,obj_block)
	{
		image_angle = 180;	
	}
	if place_meeting(x+1,y,obj_block)
	{
		image_angle = 90;	
	}
	if place_meeting(x-1,y,obj_block)
	{
		image_angle = 270;	
	}
	
	
	hspd = 0;
	vspd = 0;
	wait_timer ++;
	if wait_timer = 110
	{
		isWait = 0;
		wait_timer = 0;
		sprite_index = spr_diagonal_slime_move;
		image_speed = 2;
		if place_meeting(x,y+1,obj_block)
		{
			hspd = choose(-2,2);
			vspd = -2;
			if hspd > 0
			{
				image_angle = 0;	
			} 
			if hspd < 0 
			{
				image_angle = 90;	
			}
            rm_hspd = hspd;
            rm_vspd = vspd;
						
			
		}
		if place_meeting(x,y-1,obj_block)
		{
			hspd = choose(-2,2);
			vspd = 2;
			if hspd > 0
			{
				image_angle = 270;	
			} 
			if hspd < 0 
			{
				image_angle = 180;	
			}
			rm_hspd = hspd;
            rm_vspd = vspd;
		}
		if place_meeting(x+1,y,obj_block)
		{
			hspd = -2;
			vspd = choose(-2,2);
			if vspd > 0
			{
				image_angle = 180;	
			} 
			if vspd < 0 
			{
				image_angle = 90;	
			}
			rm_hspd = hspd;
            rm_vspd = vspd;
			
		}
		if place_meeting(x-1,y,obj_block)
		{
			hspd = 2;
			vspd = choose(-2,2);
			if vspd > 0
			{
				image_angle = 270;	
			} 
			if vspd < 0 
			{
				image_angle = 0;	
			}
            rm_hspd = hspd;
            rm_vspd = vspd;
		}
	}
}

#endregion

#region Move

if isWait = 0
{
	move_timer++;		
	if (place_meeting(x,y-1,obj_block) || place_meeting(x,y+1,obj_block) || place_meeting(x-1,y,obj_block) || place_meeting(x+1,y,obj_block)) && move_timer > 1
	{
		image_index = 0;
		move_timer = 0;
		hspd = 0;
		vspd = 0;
		isWait = 1;
        rm_hspd = hspd;
        rm_vspd = vspd;
	}
}

#endregion

#region TakeDMG

// Атака

    fnc_take_dmg_hitbox(-10,0,-1,10,0,-1);
    
// Топор

    fnc_take_dmg_axe(-10,0,-1,10,0,-1);
    
// Удар вниз   

    fnc_take_dmg_hitbox_down(0,-16,-1);

// Получение урона

    fnc_enemy_no_armor_dmg();
    
// Получение урона от электричества

if (place_meeting(x,y,obj_electric_pillar_electicity1) && obj_electric_pillar_electicity1.isOn = 1) || (place_meeting(x,y,obj_electric_pillar_electicity2) && obj_electric_pillar_electicity2.isOn = 1)
    
    {
        enemy_hp -= 1;   
    }
#endregion

#region death

if enemy_hp <= 0 
{
    instance_create_depth(x,y,depth-1,obj_diagonal_slime_dead);
    instance_create_depth(x,y,depth-1,obj_money1);
    instance_destroy();
}

#endregion

#region Bow
if place_meeting(x,y,obj_abil_arbalet_proj)
{
    hspd = 0;
    vspd = 0;
    dizzy_timer = 30;
    isWait = 2;
    
}
if dizzy_timer = 29
{
    var el = instance_create_depth(x,y,depth-1,obj_sfx_electricity2_combo);
    el.image_alpha = 0.7;
    el.image_speed = 2;
}
if dizzy_timer!= 0 dizzy_timer--;
if isWait = 2 && dizzy_timer = 0
{
    isWait = 0;
    hspd = rm_hspd;
    vspd = rm_vspd; 
}
if isWait = 2 {sprite_index = spr_diagonal_slime_diz;image_speed = 3;}

#endregion