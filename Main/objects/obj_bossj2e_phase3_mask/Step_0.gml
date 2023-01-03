/// @description Insert description here
// You can write your code in this editor
if canhit = 0
{
    #region Удар вниз
	if place_meeting(x,y,obj_hitbox_down) && hit_cd = 0
	{
		hit_cd = 1;
        obj_Player.isAttackingdown = 0;
    	obj_Player.attackingdown_timer = 0;
    	obj_Player.vspd = -5;   
		instance_create_depth(obj_hitbox_down.x,obj_hitbox_down.y+18,depth-1,obj_sfx_weapon_slash);
	}
	#endregion   
    
    var b1_hit = instance_place(x,y,obj_bomb);
    if b1_hit!= noone
    {
        if b1_hit.hspd != 0
        {
            canhit = 1;
            obj_bossj2e_phase3.state = 7;
            obj_bossj2e_phase3.t = 0;
            
            with(b1_hit)
            {
                fnc_snd_play_over(snd_item_bomb_explosion);
            	instance_create_depth(x,y+7,depth-1,obj_bomb_explosion); 
                instance_destroy(pointer);	
            	instance_destroy();	
            }
        }
    }
    
    var e1_hit = instance_place(x,y,obj_bomb_explosion);
    if e1_hit!= noone
    {
        canhit = 1;
        obj_bossj2e_phase3.state = 7;
        obj_bossj2e_phase3.t = 0;
        fnc_snd_play_over(snd_item_bomb_explosion);

    }
}

if canhit = 1
{
    #region Атака
	if place_meeting(x,y,obj_hitbox) && hit_cd = 0
	{
        obj_bossj2e_phase3.hit = 1;
		hit_cd = 1;
		enemy_hp -=1;
		if obj_Player.dir = 1
		{
			instance_create_depth(obj_hitbox.x+8,obj_hitbox.y-20,depth-1,obj_sfx_weapon_slash);
		} else instance_create_depth(obj_hitbox.x-8,obj_hitbox.y-20,depth-1,obj_sfx_weapon_slash);

	}
    #endregion
    #region Топор
    var axehit = instance_place(x,y,obj_item_axe);
    if (axehit !=noone) && (hit_cd = 0)
    {
        obj_bossj2e_phase3.hit = 1;
        hit_cd = 1;
		enemy_hp -= 2;
        instance_create_depth(x+random_range(-8,8),y+random_range(-8,8),depth-1,obj_sfx_weapon_slash);
        axehit.a = 1;
    }
	#endregion
    #region Топор 2
    var axehit2 = instance_place(x,y,obj_item_axe2);
    if (axehit2 !=noone) && (hit_cd = 0)
    {
        obj_bossj2e_phase3.hit = 1;
        hit_cd = 1;
		enemy_hp -= 2;
        instance_create_depth(x+random_range(-8,8),y+random_range(-8,8),depth-1,obj_sfx_weapon_slash);
        axehit2.a += 1;
        axehit2.vspd = -2;
        axehit2.hspd = -axehit2.hspd;
    }
	#endregion
    #region Топор 3
    var axehit3 = instance_place(x,y,obj_item_axe3);
    if (axehit3 !=noone) && (hit_cd = 0)
    {
        obj_bossj2e_phase3.hit = 1;
        hit_cd = 1;
		enemy_hp -= 2;
        instance_create_depth(x+random_range(-8,8),y+random_range(-8,8),depth-1,obj_sfx_weapon_slash);

    }
	#endregion
    #region Удар вниз
	if place_meeting(x,y,obj_hitbox_down) && hit_cd = 0
	{
        obj_bossj2e_phase3.hit = 1;
		hit_cd = 1;
		enemy_hp -=1;
        obj_Player.isAttackingdown = 0;
    	obj_Player.attackingdown_timer = 0;
    	obj_Player.vspd = -5;   
		instance_create_depth(obj_hitbox_down.x,obj_hitbox_down.y+18,depth-1,obj_sfx_weapon_slash);
	}
	#endregion
    // БОМБА
    var b2_hit = instance_place(x,y,obj_bomb);
    if b2_hit!= noone
    {
        if b2_hit.hspd != 0
        {
            obj_bossj2e_phase3.hit = 1;
            hit_cd = 1;
    		enemy_hp -= 4;
            with(b2_hit)
            {
                fnc_snd_play_over(snd_item_bomb_explosion);
            	instance_create_depth(x,y+7,depth-1,obj_bomb_explosion); 
                instance_destroy(pointer);	
            	instance_destroy();	
            }
        }
    }
    
    
    #region моргание
    if hit_cd !=0 
	{
		hit_cd++;	
	}
	if hit_cd = 18//20
	{
		hit_cd = 0;	
	}
	
    #endregion
}

if enemy_hp <= 0
{
    if instance_exists(obj_boss2_wings) instance_destroy(obj_boss2_wings);
    instance_create_depth(x,y,0,obj_bossj2e_phase3_death);
    instance_destroy(obj_bossj2e_phase3);
    instance_destroy();   
}

  #region взаимодействие с пружинами

    if place_meeting(x,y,obj_abil_boots_hitbox)
    {
        fnc_snd_play_onetime(snd_player_springboots);
        obj_Player.sbootsbuffer = 1;
        obj_Player.vspd = -5;
        obj_Player.dash_counts = 1;
        instance_create_depth(obj_abil_boots_hitbox.x,obj_abil_boots_hitbox.y+20,obj_abil_boots_hitbox.depth-1,obj_sfx4);
        instance_destroy(obj_abil_boots_hitbox);
    }
    
    #endregion
  
  #region alpha
    
    if canhit = 0 
    {
       if image_alpha < 0.7 image_alpha +=0.1;   
    }
    if canhit = 1
    {
        if image_alpha > 0 image_alpha -=0.1;   
    }
    
    #endregion