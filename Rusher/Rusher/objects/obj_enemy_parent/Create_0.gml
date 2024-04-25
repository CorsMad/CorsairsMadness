/// @description Insert description here
// You can write your code in this editor
state = 0;

weak_crit_t = 0;
weak_fire_t = 0
weak_ice_t = 0
weak_light_t = 0	
weak_wind_t	= 0;






EnemyCreator = {
	en_name              :   "small slime"						   ,
	exp_gain             :   40				    				   ,
	enemy_hp_max         :   250								   ,
	enemy_hp             :   250								   ,
	enemy_attack_max     :   100								   ,
	enemy_attack         :   100			    				   ,
	enemy_attack_spd     :   0.25			    				   ,
	dmg                  :   random_range(1,3)					   ,
	effect_attack        :   obj_effect_slime_slash                ,
	s_idle				 :   spr_slime_small                       ,
	s_attack			 :   spr_slime_small_attack                ,
	s_death				 :   spr_slime_small_death                 ,
	x_end				 :   352                                   ,
	y_start				 :	 80									   ,
	weak_res_crit		 :	 0									   ,
	weak_res_fire		 :	 0									   ,
	weak_res_ice		 :	 0									   ,
	weak_res_light		 :	 0									   ,
	weak_res_wind		 :	 0									   
}
