// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function fnc_take_dmg_hitbox(x1,y1,d1,x2,y2,d2)
{
    if (place_meeting(x,y,obj_hitbox)) && hit_cd = 0	
    {
		hit_cd = 1;
		enemy_hp -= 1;
        if obj_Player.x < x 
		{
			instance_create_depth(x+x1,y+y1,d1,obj_sfx_weapon_slash);
		} else instance_create_depth(x+x2,y+y2,d2,obj_sfx_weapon_slash);
	}
}

function fnc_take_dmg_axe(x1,y1,d1,x2,y2,d2)
{
    #region Топор 1
    var axehit = instance_place(x,y,obj_item_axe);
    if (axehit !=noone) && (hit_cd = 0)
    {
        hit_cd = 1;
		enemy_hp -= 1;
        if obj_Player.x < x 
		{
			instance_create_depth(x+x1,y+y1,d1,obj_sfx_weapon_slash);
		} else instance_create_depth(x+x2,y+y2,d2,obj_sfx_weapon_slash);
        axehit.a = 1;
    }
    #endregion
    #region Топор 2
    var axehit2 = instance_place(x,y,obj_item_axe2);
    if (axehit2 !=noone) && (hit_cd = 0)
    {
        hit_cd = 1;
		enemy_hp -= 1;
        if obj_Player.x < x 
		{
			instance_create_depth(x+x1,y+y1,d1,obj_sfx_weapon_slash);
		} else instance_create_depth(x+x2,y+y2,d2,obj_sfx_weapon_slash);
        axehit2.a += 1;
        axehit2.vspd = -2;
        axehit2.hspd = -axehit2.hspd;
    }
    #endregion
    #region Топор 3
    var axehit3 = instance_place(x,y,obj_item_axe3);
    if (axehit3 !=noone) && (hit_cd = 0)
    {
        hit_cd = 1;
		enemy_hp -= 1;
        if obj_Player.x < x 
		{
			instance_create_depth(x+x1,y+y1,d1,obj_sfx_weapon_slash);
		} else instance_create_depth(x+x2,y+y2,d2,obj_sfx_weapon_slash);
    }
    #endregion
}

function fnc_take_dmg_bomb(x1,y1,d1,x2,y2,d2)
{

    
    #region Бомба 3
    var bombhit = instance_place(x,y,obj_item_bomb3);
    if (bombhit !=noone) && (hit_cd = 0)
    {
        hit_cd = 1;
		enemy_hp -= 1;
        if obj_Player.x < x 
		{
			instance_create_depth(x+x1,y+y1,d1,obj_sfx_weapon_slash);
		} else instance_create_depth(x+x2,y+y2,d2,obj_sfx_weapon_slash);
        bombhit.isDead = 1;
        bombhit.a = 190;
    }
    #endregion
    
    #region Бомба мал
    var bombsmallhit = instance_place(x,y,obj_item_bomb3_part);
    if (bombsmallhit !=noone) && (hit_cd = 0)
    {
        hit_cd = 1;
		enemy_hp -= 1;
        if obj_Player.x < x 
		{
			instance_create_depth(x+x1,y+y1,d1,obj_sfx_weapon_slash);
		} else instance_create_depth(x+x2,y+y2,d2,obj_sfx_weapon_slash);
        bombsmallhit.isDead = 1;
    }
    #endregion
    

}

function fnc_take_dmg_hitbox_down(x1,y1,d1)
{
    if place_meeting(x,y,obj_hitbox_down) && hit_cd = 0
	{
        
        if instance_exists(obj_hitbox_down)
        {
            hit_cd = 1;
		    enemy_hp -= 1;
            
            obj_Player.isAttackingdown = 0;
    		obj_Player.attackingdown_timer = 0;
    		obj_Player.vspd = -5;          
        }
		instance_create_depth(x+x1,y+y1,d1,obj_sfx_weapon_slash);
	}    
}



function fnc_take_dmg_hitbox_fol(x1,y1,d1,x2,y2,d2)
{
    if (place_meeting(x,y,obj_hitbox)) && hit_cd = 0	
    {
        fol.red = 1;
		hit_cd = 1;
		fol.enemy_hp -= 1;
        if obj_Player.x < x 
		{
			instance_create_depth(x+x1,y+y1,d1,obj_sfx_weapon_slash);
		} else instance_create_depth(x+x2,y+y2,d2,obj_sfx_weapon_slash);
	}
}

function fnc_take_dmg_axe_fol(x1,y1,d1,x2,y2,d2)
{
    #region Топор 1
    var axehit = instance_place(x,y,obj_item_axe);
    if (axehit !=noone) && (hit_cd = 0)
    {
        fol.red = 1;
        hit_cd = 1;
		fol.enemy_hp -= 1;
        if obj_Player.x < x 
		{
			instance_create_depth(x+x1,y+y1,d1,obj_sfx_weapon_slash);
		} else instance_create_depth(x+x2,y+y2,d2,obj_sfx_weapon_slash);
        axehit.a = 1;
    }
    #endregion
    #region Топор 2
    var axehit2 = instance_place(x,y,obj_item_axe2);
    if (axehit2 !=noone) && (hit_cd = 0)
    {
        fol.red = 1;
        hit_cd = 1;
		fol.enemy_hp -= 1;
        if obj_Player.x < x 
		{
			instance_create_depth(x+x1,y+y1,d1,obj_sfx_weapon_slash);
		} else instance_create_depth(x+x2,y+y2,d2,obj_sfx_weapon_slash);
        axehit2.a += 1;
        axehit2.vspd = -2;
        axehit2.hspd = -axehit2.hspd;
    }
    #endregion
    #region Топор 3
    var axehit3 = instance_place(x,y,obj_item_axe3);
    if (axehit3 !=noone) && (hit_cd = 0)
    {
        hit_cd = 1;
		fol.enemy_hp -= 1;
        if obj_Player.x < x 
		{
			instance_create_depth(x+x1,y+y1,d1,obj_sfx_weapon_slash);
		} else instance_create_depth(x+x2,y+y2,d2,obj_sfx_weapon_slash);
    }
    #endregion
}

function fnc_take_dmg_bomb_fol(x1,y1,d1,x2,y2,d2)
{

    
    #region Бомба 3
    var bombhit = instance_place(x,y,obj_item_bomb3);
    if (bombhit !=noone) && (hit_cd = 0)
    {
        fol.red = 1;
        hit_cd = 1;
		fol.enemy_hp -= 1;
        if obj_Player.x < x 
		{
			instance_create_depth(x+x1,y+y1,d1,obj_sfx_weapon_slash);
		} else instance_create_depth(x+x2,y+y2,d2,obj_sfx_weapon_slash);
        bombhit.isDead = 1;
        bombhit.a = 190;
    }
    #endregion
    
    #region Бомба мал
    var bombsmallhit = instance_place(x,y,obj_item_bomb3_part);
    if (bombsmallhit !=noone) && (hit_cd = 0)
    {
        fol.red = 1;
        hit_cd = 1;
		fol.enemy_hp -= 1;
        if obj_Player.x < x 
		{
			instance_create_depth(x+x1,y+y1,d1,obj_sfx_weapon_slash);
		} else instance_create_depth(x+x2,y+y2,d2,obj_sfx_weapon_slash);
        bombsmallhit.isDead = 1;
    }
    #endregion
    

}

function fnc_take_dmg_hitbox_down_fol(x1,y1,d1)
{
    if place_meeting(x,y,obj_hitbox_down) && hit_cd = 0
	{
        
        if instance_exists(obj_hitbox_down)
        {
            hit_cd = 1;
		    fol.enemy_hp -= 1;
            fol.red = 1;
            obj_Player.isAttackingdown = 0;
    		obj_Player.attackingdown_timer = 0;
    		obj_Player.vspd = -5;          
        }
		instance_create_depth(x+x1,y+y1,d1,obj_sfx_weapon_slash);
	}    
}