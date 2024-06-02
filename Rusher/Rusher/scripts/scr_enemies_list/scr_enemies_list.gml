// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_en_creator_slime_small1(){
	EnemyCreator = {
		en_name              :    "slime"				               ,		
		exp_gain             :    35				                   ,		  
		enemy_hp_max         :    20					               ,	  
		enemy_hp             :    20					               ,	  
		enemy_attack_max     :    100					               ,	  
		enemy_attack         :    100			    	               ,	  
		enemy_attack_spd     :    0.1			    	               ,		  
		dmg                  :    random_range(4,6)		               ,		  
		effect_attack        :    obj_effect_slime_slash               ,         
		s_idle			     :    spr_slime_small		               ,          
		s_attack		     :    spr_slime_small_attack               ,          
		s_death		         :    spr_slime_small_death	               ,      
		x_end			     :    352					               ,          
		y_start		         :    80					               ,
		weak_res_crit		 :	  1					                   ,
		weak_res_fire		 :	  0						               ,
		weak_res_ice		 :	  0					                   ,
		weak_res_light		 :	  0						               ,
		weak_res_wind		 :	  0									   ,
        gold                 :    5                     ,
        weak_count                 :    0,
        boss : 0
	}							  
	return(EnemyCreator);
}
function scr_en_creator_slime_small2(){
	EnemyCreator = {
		en_name              :    "slime"				               ,		
		exp_gain             :    35				                   ,		  
		enemy_hp_max         :    20					               ,	  
		enemy_hp             :    20					               ,	  
		enemy_attack_max     :    100					               ,	  
		enemy_attack         :    100			    	               ,	  
		enemy_attack_spd     :    0.1			    	               ,		  
		dmg                  :    random_range(4,6)		               ,		  
		effect_attack        :    obj_effect_slime_slash               ,         
		s_idle			     :    spr_slime_small		               ,          
		s_attack		     :    spr_slime_small_attack               ,          
		s_death		         :    spr_slime_small_death	               ,      
		x_end			     :    352					               ,          
		y_start		         :    80					               ,
		weak_res_crit		 :	  0									   ,
		weak_res_fire		 :	  1									   ,
		weak_res_ice		 :	  0					                   ,
		weak_res_light		 :	  0						               ,
		weak_res_wind		 :	  0									   ,
        gold                 :    5 ,
        weak_count                 :    0,
        boss : 0
	}							  
	return(EnemyCreator);
}





function scr_en_creator_slime_medium(){
	EnemyCreator = {
		en_name					 :    "slime medium"			    ,		
		exp_gain				 :    35				    		,		  
		enemy_hp_max			 :    25							,	  
		enemy_hp				 :    25							,	  
		enemy_attack_max		 :    100							,	  
		enemy_attack			 :    100			    			,	  
		enemy_attack_spd		 :    0.2			    		    ,		  
		dmg						 :    random_range(6,8)			    ,		  
		effect_attack			 :    obj_effect_slime_slash        ,         
		s_idle					 :    spr_slime_medium              ,          
		s_attack				 :    spr_slime_medium_attack       ,          
		s_death					 :    spr_slime_medium_death        ,      
		x_end					 :    352                           ,          
		y_start					 :    80							,
		weak_res_crit			 :	 choose(0,1)				    ,
		weak_res_fire			 :	 -1							    ,
		weak_res_ice			 :	 0							    ,
		weak_res_light			 :	 0							    ,
		weak_res_wind			 :	 0							    ,
        gold                     :   irandom_range(5,7) ,
        weak_count                 :    0,
        boss : 0
	}	
	return(EnemyCreator);
}	
function scr_en_creator_slime_big(){
	EnemyCreator = {
		en_name            :    "slime big"			        ,		
		exp_gain           :    35				    		,		  
		enemy_hp_max       :    30							,	  
		enemy_hp           :    30							,	  
		enemy_attack_max   :    100							,	  
		enemy_attack       :    100			    			,	  
		enemy_attack_spd   :    0.3			    		    ,		  
		dmg                :    random_range(8,10)			,		  
		effect_attack      :    obj_effect_slime_slash      ,         
		s_idle			   :    spr_slime_big               ,          
		s_attack		   :    spr_slime_big_attack        ,          
		s_death		       :    spr_slime_big_death         ,      
		x_end			   :    352                         ,          
		y_start		       :    80							,
		weak_res_crit	   :    choose(-1,1)				,
		weak_res_fire	   :    choose(-1,1)				,
		weak_res_ice	   :    0							,
		weak_res_light	   :    0							,
		weak_res_wind	   :    0							,
        gold               :   irandom_range(6,9) ,
        weak_count                 :    0,
        boss : 0
	}	
	return(EnemyCreator);
}	
function scr_en_creator_slime_boss(){
	EnemyCreator = {
		en_name            :    "slime boss"						   ,		
		exp_gain           :    35				    				   ,		  
		enemy_hp_max       :    100									   ,	  
		enemy_hp           :    100									   ,	  
		enemy_attack_max   :    100									   ,	  
		enemy_attack       :    100			    					   ,	  
		enemy_attack_spd   :    0.5			    					   ,		  
		enemy_attack_spd_special:    0.1			    			   ,		  
		enemy_attack_spd_stun   :    0.2			    			   ,		  
		dmg                :    random_range(8,10)					   ,		  
		effect_attack      :    obj_effect_slime_slash				   ,         
		s_idle			   :    spr_slime_big						   ,          
		s_attack		   :    spr_slime_big_attack				   ,          
		s_death		       :    spr_slime_big_death					   ,      
		x_end			   :    352									   ,          
		y_start		       :    80									   ,
		weak_res_crit			 :	 0								   ,
		weak_res_fire			 :	 0								   ,
		weak_res_ice			 :	 0								   ,
		weak_res_light			 :	 0								   ,
		weak_res_wind			 :	 0								   ,
		boss			   :	1									   ,
		weak_count		   :	3	,	
        gold : 20
	}	
	return(EnemyCreator);
}