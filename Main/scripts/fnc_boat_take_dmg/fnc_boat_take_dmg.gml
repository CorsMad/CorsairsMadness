// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function fnc_boat_take_dmg(){

}

function fnc_boat_take_dmg_pistol(hp)
{    
    #region //Обычный пистолет
    var pistolhit = instance_place(x,y,obj_player_boat_pistol_projectile);
    if (pistolhit !=noone) 
    {
		instance_create_depth(pistolhit.x,pistolhit.y,-1000,obj_sfx_weapon_slash);
        pistolhit.a = 1;
		enemy_hp -= hp;       
    }
    #endregion     
}

function fnc_boat_take_dmg_dual_pistol(hp1,hp2,hp3) 
{
	#region // Двойные пистолеты 
    
    #region // T1
        var dpistolhit = instance_place(x,y,obj_player_boat_dpistol_t1);
        if (dpistolhit !=noone)
        {
            instance_create_depth(dpistolhit.x,dpistolhit.y,-1000,obj_sfx_weapon_slash);
            dpistolhit.a = 1;
    		enemy_hp -= hp1; //0.75;
       
        }
    #endregion
    
    #region // T2
        var dpistolhit = instance_place(x,y,obj_player_boat_dpistol_t2);
        if (dpistolhit !=noone) && (hit_cd = 0)
        {
            instance_create_depth(dpistolhit.x,dpistolhit.y,-1000,obj_sfx_weapon_slash);
            dpistolhit.a = 1;
    		enemy_hp -= hp2; //1;      
        }
    #endregion
    
    #region // T3
        var dpistolhit = instance_place(x,y,obj_player_boat_dpistol_t3);
        if (dpistolhit !=noone) && (hit_cd = 0)
        {
            instance_create_depth(dpistolhit.x,dpistolhit.y,-1000,obj_sfx_weapon_slash);
            dpistolhit.a = 1;
    		enemy_hp -= hp3;//1.25;      
        }
    #endregion
    
    #endregion
}

function fnc_boat_take_dmg_cannon(hp) 
{
	#region Пушка
    var cannonhit = instance_place(x,y,obj_player_boat_cannon_projectile);
    if (cannonhit !=noone)
    {
        instance_create_depth(cannonhit.x,cannonhit.y,-1000,obj_sfx_weapon_slash);
        cannonhit.a = 1;
		enemy_hp -= hp;  // (4)    
    }
    #endregion	
}

function fnc_boat_take_dmg_parrotcage(hp1,hp2,hp3,hp4)
{    
	/*
	  hp1 - 1 Тир
	  hp2 - 2 тир
	  hp3 - 3 тир
	  hp4 - взрыв после 3 тир
	*/
	
    #region Tier1    
        var parrothit = instance_place(x,y,obj_player_boat_parrotcage_t1);
        if (parrothit !=noone)
        {
    		instance_create_depth(parrothit.x,parrothit.y,-1000,obj_sfx_weapon_slash);
            parrothit.a = 1;
    		enemy_hp -= hp1//1;       
        }     
    #endregion
    #region Tier2    
        var parrothit = instance_place(x,y,obj_player_boat_parrotcage_t2);
        if (parrothit !=noone)
        {
    		instance_create_depth(parrothit.x,parrothit.y,-1000,obj_sfx_weapon_slash);
            parrothit.a = 1;
    		enemy_hp -= hp2//1;       
        }     
    #endregion
    #region Tier3    
        var parrothit = instance_place(x,y,obj_player_boat_parrotcage_t3);
        if (parrothit !=noone)
        {
            parrothit.mask_index = spr_blank;
			instance_create_depth(parrothit.x,parrothit.y,-1000,obj_sfx_weapon_slash);
            parrothit.a = 1;
    		enemy_hp -= hp3//;       
        }  
        var parrothitexpl = instance_place(x,y,obj_player_boat_parrotcage_t3_expl);
        if (parrothitexpl !=noone)
        {
			instance_create_depth(parrothitexpl.x,parrothitexpl.y,-1000,obj_sfx_weapon_slash);
            parrothitexpl.a = 1;
    		enemy_hp -= hp4//;       
        }  
    #endregion
}

function fnc_boat_take_dmg_blunderbuss(hp1)
{    

    var blunderbusshit = instance_place(x,y,obj_player_boat_bbus_t1_1);
    if (blunderbusshit !=noone)
    {
    	instance_create_depth(blunderbusshit.x,blunderbusshit.y,-1000,obj_sfx_weapon_slash);
        blunderbusshit.a = 1;
    	enemy_hp -= hp1//1;      m 
    }        
}

function fnc_boat_take_dmg_fastshot(hp1,hp2)
{    

    var fastshothit1 = instance_place(x,y,obj_player_boat_fastshot_t1);
    if (fastshothit1 !=noone)
    {
    	instance_create_depth(fastshothit1.x,fastshothit1.y,-1000,obj_sfx_weapon_slash);
        fastshothit1.a = 1;
    	enemy_hp -= hp1; //1      
    }        

    var fastshothit2 = instance_place(x,y,obj_player_boat_fastshot_t2);
    if (fastshothit2 !=noone)
    {
    	instance_create_depth(fastshothit2.x,fastshothit2.y,-1000,obj_sfx_weapon_slash);
        fastshothit2.a = 1;
    	enemy_hp -= hp2;   //2    
    }         
}

function fnc_boat_take_dmg_obstacle()
{
    var pistolhit = instance_place(x,y,obj_player_boat_pistol_projectile);
    if (pistolhit !=noone) && (hit_cd = 0)
    {
         if obj_Player_boat.x < x 
		{
			instance_create_depth(pistolhit.x,pistolhit.y,-1000,obj_sfx_weapon_slash);
		} 
        pistolhit.a = 1;
		enemy_hp -= 1;  
    }
    var dpistolhit1 = instance_place(x,y,obj_player_boat_dpistol_t1);
    if (dpistolhit1 !=noone) && (hit_cd = 0)
    {
         if obj_Player_boat.x < x 
		{
			instance_create_depth(dpistolhit1.x,dpistolhit1.y,-1000,obj_sfx_weapon_slash);
		} 
        dpistolhit1.a = 1;
		enemy_hp -= 0.75;  
    }
    var dpistolhit2 = instance_place(x,y,obj_player_boat_dpistol_t2);
    if (dpistolhit2 !=noone) && (hit_cd = 0)
    {
         if obj_Player_boat.x < x 
		{
			instance_create_depth(dpistolhit2.x,dpistolhit2.y,-1000,obj_sfx_weapon_slash);
		} 
        dpistolhit2.a = 1;
		enemy_hp -= 1;  
    }
    var dpistolhit3 = instance_place(x,y,obj_player_boat_dpistol_t3);
    if (dpistolhit3 !=noone) && (hit_cd = 0)
    {
         if obj_Player_boat.x < x 
		{
			instance_create_depth(dpistolhit3.x,dpistolhit3.y,-1000,obj_sfx_weapon_slash);
		} 
        dpistolhit3.a = 1;
		enemy_hp -= 1.25;  
    }
    var cannonhit = instance_place(x,y,obj_player_boat_cannon_projectile);
    if (cannonhit !=noone) && (hit_cd = 0)
    {
         if obj_Player_boat.x < x 
		{
			instance_create_depth(cannonhit.x,cannonhit.y,-1000,obj_sfx_weapon_slash);
		} 
        cannonhit.a = 1;
		enemy_hp -= 4;
       
    }
}