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
            obj_bossj2_phase3.state = 7;
            obj_bossj2_phase3.t = 0;
            
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
        obj_bossj2_phase3.state = 7;
        obj_bossj2_phase3.t = 0;
        fnc_snd_play_over(snd_item_bomb_explosion);

    }
    

}

if canhit = 1
{
// Атака

    fnc_take_dmg_hitbox(-10,0,-1,10,0,-1);
      
// Удар вниз   

    fnc_take_dmg_hitbox_down(0,-16,-1);
    

    
    
    // БОМБА
    var b2_hit = instance_place(x,y,obj_bomb);
    if b2_hit!= noone
    {
        if b2_hit.hspd != 0
        {
            obj_bossj2_phase3.hit = 1;
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
}

// Топор

    fnc_take_dmg_axe(-10,0,-1,10,0,-1,1);
    
// Бомба

    fnc_take_dmg_bomb(-10,-16,-1,10,-16,-1,1);

// Eball

	fnc_take_dmg_eball(0,-16,-1,1);

// Parrot

	fnc_take_dmg_parrot_laser(0,-16,-1,1)


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



if enemy_hp <= 0
{
    if instance_exists(obj_boss2_wings) instance_destroy(obj_boss2_wings);
    var i = instance_create_depth(x,y,0,obj_bossj2_phase3_death);
    i.image_xscale = obj_bossj2_phase3.image_xscale;
    instance_destroy(obj_bossj2_phase3);
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