/// @description Insert description here
// You can write your code in this editor

    #region Удар вниз
	if place_meeting(x,y,obj_hitbox_down) 
	{
        obj_Player.isAttackingdown = 0;
    	obj_Player.attackingdown_timer = 0;
    	obj_Player.vspd = -5;   
		instance_create_depth(obj_hitbox_down.x,obj_hitbox_down.y+18,depth-1,obj_sfx_weapon_slash);
	}
	#endregion   

    #region взаимодействие с пружинами

    if place_meeting(x,y,obj_abil_boots_hitbox)
    {
        fnc_snd_play_onetime(snd_player_springboots);
        obj_Player.sbootsbuffer = 1;
        obj_Player.vspd = -5;
        obj_Player.dash_counts = 1;
        
        if instance_exists(obj_bossj2_phase_between) || instance_exists(obj_bossj2_phase_between2) ||
        instance_exists(obj_bossj2e_phase_between) || instance_exists(obj_bossj2e_phase_between2)         
        {
            instance_create_depth(x,y,depth-1,obj_money1);   
        }
                
        instance_create_depth(obj_abil_boots_hitbox.x,obj_abil_boots_hitbox.y+20,obj_abil_boots_hitbox.depth-1,obj_sfx4);
        instance_destroy(obj_abil_boots_hitbox);
    }
    
    #endregion