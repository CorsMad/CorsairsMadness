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
}

if canhit = 1
{
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
    
    
    
    #region моргание
    if hit_cd !=0 
	{
		hit_cd++;	
	}
	if hit_cd = 18//20
	{
		hit_cd = 0;	
	}
	if hit_cd > 1 
	{
		image_blend = make_color_hsv(245,255,255);
	} else image_blend = c_white;
	
	if instance_exists(obj_bossj2_phase2){
		 obj_bossj2_phase2.hit = hit_cd;
	}
	
    #endregion
}

if enemy_hp <= 0
{
    if instance_exists(obj_boss2_wings) instance_destroy(obj_boss2_wings);
    instance_create_depth(x,y,0,obj_bossj2_phase2_death);
    instance_destroy(obj_bossj2_phase2);
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