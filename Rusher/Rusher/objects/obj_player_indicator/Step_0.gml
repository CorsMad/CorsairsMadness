/// @description Insert description here
// You can write your code in this editor

switch(action){
	case 0:
	t_wait++;
	//if t_wait = 10 instance_create_depth(0,0,0,obj_action_bar)
	if t_wait = 5 instance_create_depth(0,0,0,obj_action_bar)
	if t_wait > 15 x+=spd;
		break;
	case 1:
		t++;
		if t = 10 {	
			if instance_exists(obj_enemy_parent){
            var turn = obj_enemy_parent.turn;  
            //var _w_count = obj_enemy_parent.EnemyCreator.weak_count
                              
				//где остановка
				 if place_meeting(x,y,obj_action_bar_green) {
					// CRIT DMG
					scr_enemy_boss_weakness_destroy(spr_w_icon_crit);
                    if turn != 3 {
    					switch(obj_enemy_parent.EnemyCreator.weak_res_crit){
    						case -1:// резист
    							obj_enemy_parent.EnemyCreator.enemy_hp -= obj_player_stats.dmg_output_normal*0.5;
    							var dmg = instance_create_depth(obj_enemy_parent.x,obj_enemy_parent.y,obj_enemy_parent.depth-10,obj_dmgdigit_crit);
    							dmg.number =  obj_player_stats.dmg_output_normal*0.5;
    							break;
    						case 0:
    							obj_enemy_parent.EnemyCreator.enemy_hp -= obj_player_stats.dmg_output_crit;	
    							var dmg = instance_create_depth(obj_enemy_parent.x,obj_enemy_parent.y,obj_enemy_parent.depth-10,obj_dmgdigit_crit);
    							dmg.number =  obj_player_stats.dmg_output_crit;
    							break;
    						case 1:// слабость
    							if obj_enemy_parent.weak_crit_t = 0 {
    								obj_enemy_parent.EnemyCreator.enemy_hp -= obj_player_stats.dmg_output_crit*1.2;								
    								obj_enemy_parent.weak_crit_t = 300;
    								var dmg = instance_create_depth(obj_enemy_parent.x,obj_enemy_parent.y,obj_enemy_parent.depth-10,obj_dmgdigit_crit);
    								dmg.number =  obj_player_stats.dmg_output_crit*1.2;
    							} else {
    								obj_enemy_parent.EnemyCreator.enemy_hp -= obj_player_stats.dmg_output_crit*0.8; 
    								var dmg = instance_create_depth(obj_enemy_parent.x,obj_enemy_parent.y,obj_enemy_parent.depth-10,obj_dmgdigit_crit);
    								dmg.number =  obj_player_stats.dmg_output_crit*0.8;	
    							}
    							break;
    					}
                    } 
											
				} else if place_meeting(x,y,obj_action_bar_white) { 
					// NORMAL DMG
					
					switch(obj_action_bar_white.normal_change){
						case 0:
							#region обычная
							switch(obj_action_bar_white.type_dmg){
								case 0:
                                    scr_enemy_boss_weakness_destroy(spr_w_icon_normal);
                                    if turn!=3{
    									obj_enemy_parent.EnemyCreator.enemy_hp -= obj_player_stats.dmg_output_normal;
    									var dmg = instance_create_depth(obj_enemy_parent.x,obj_enemy_parent.y,obj_enemy_parent.depth-10,obj_dmgdigit_normal);
    									dmg.number = obj_player_stats.dmg_output_normal;
                                    }
									break;
								case 1:
									#region FIRE
                                        scr_enemy_boss_weakness_destroy(spr_w_icon_fire);
                                        if turn!=3{
    										switch(obj_enemy_parent.EnemyCreator.weak_res_fire){                                        
            								case -1: 
            									#region ЕСТЬ РЕЗИСТ
            										obj_enemy_parent.EnemyCreator.enemy_hp -= obj_player_stats.dmg_output_fire*0.5;	
            										var dmg = instance_create_depth(obj_enemy_parent.x,obj_enemy_parent.y,obj_enemy_parent.depth-10,obj_dmgdigit_crit);
            										dmg.number =  obj_player_stats.dmg_output_fire*0.5;
            									#endregion
            									break;
            								case 0: 
            									#region НИЧЕГО
            										obj_enemy_parent.EnemyCreator.enemy_hp -= obj_player_stats.dmg_output_fire*0.8;		
            										var dmg = instance_create_depth(obj_enemy_parent.x,obj_enemy_parent.y,obj_enemy_parent.depth-10,obj_dmgdigit_crit);
            										dmg.number =  obj_player_stats.dmg_output_fire*0.8;
            									#endregion	
            									break;
            								case 1: 
            									#region УЯЗВИМОСТЬ
        										obj_enemy_parent.EnemyCreator.enemy_hp -= obj_player_stats.dmg_output_fire*1.2;	
        										var dmg = instance_create_depth(obj_enemy_parent.x,obj_enemy_parent.y,obj_enemy_parent.depth-10,obj_dmgdigit_crit);
        										dmg.number =  obj_player_stats.dmg_output_fire*1.2;
        									#endregion
                                        }
									break;
										}
									#endregion					
									obj_player_stats.el_count_fire --;
									break;
								case 2:
									#region ICE
                                        scr_enemy_boss_weakness_destroy(spr_w_icon_ice);
                                        if turn!=3 {
										switch(obj_enemy_parent.EnemyCreator.weak_res_ice){
            								case -1: 
            									#region ЕСТЬ РЕЗИСТ
            										obj_enemy_parent.EnemyCreator.enemy_hp -= obj_player_stats.dmg_output_ice*0.5;	
            										var dmg = instance_create_depth(obj_enemy_parent.x,obj_enemy_parent.y,obj_enemy_parent.depth-10,obj_dmgdigit_crit);
            										dmg.number =  obj_player_stats.dmg_output_ice*0.5;
            									#endregion
            									break;
            								case 0: 
            									#region НИЧЕГО
            										obj_enemy_parent.EnemyCreator.enemy_hp -= obj_player_stats.dmg_output_ice*0.8;		
            										var dmg = instance_create_depth(obj_enemy_parent.x,obj_enemy_parent.y,obj_enemy_parent.depth-10,obj_dmgdigit_crit);
            										dmg.number =  obj_player_stats.dmg_output_ice*0.8;
            									#endregion	
            									break;
            								case 1: 
            									#region УЯЗВИМОСТЬ
            										obj_enemy_parent.EnemyCreator.enemy_hp -= obj_player_stats.dmg_output_ice*1.5;	
            										var dmg = instance_create_depth(obj_enemy_parent.x,obj_enemy_parent.y,obj_enemy_parent.depth-10,obj_dmgdigit_crit);
            										dmg.number =  obj_player_stats.dmg_output_ice*1.5;
            									#endregion
            									break;
            								}
                                        }
									#endregion
									obj_player_stats.el_count_ice --;
									break;
								case 3:
									#region LIGHT
                                        scr_enemy_boss_weakness_destroy(spr_w_icon_light);
                                        if turn!=3 {
    										switch(obj_enemy_parent.EnemyCreator.weak_res_light){
            								case -1: 
            									#region ЕСТЬ РЕЗИСТ
            										obj_enemy_parent.EnemyCreator.enemy_hp -= obj_player_stats.dmg_output_light*0.5;	
            										var dmg = instance_create_depth(obj_enemy_parent.x,obj_enemy_parent.y,obj_enemy_parent.depth-10,obj_dmgdigit_crit);
            										dmg.number =  obj_player_stats.dmg_output_light*0.5;
            									#endregion
            									break;
            								case 0: 
            									#region НИЧЕГО
            										obj_enemy_parent.EnemyCreator.enemy_hp -= obj_player_stats.dmg_output_light*0.8;		
            										var dmg = instance_create_depth(obj_enemy_parent.x,obj_enemy_parent.y,obj_enemy_parent.depth-10,obj_dmgdigit_crit);
            										dmg.number =  obj_player_stats.dmg_output_light*0.8;
            									#endregion	
            									break;
            								case 1: 
            									#region УЯЗВИМОСТЬ
            										obj_enemy_parent.EnemyCreator.enemy_hp -= obj_player_stats.dmg_output_light*1.2;	
            										var dmg = instance_create_depth(obj_enemy_parent.x,obj_enemy_parent.y,obj_enemy_parent.depth-10,obj_dmgdigit_crit);
            										dmg.number =  obj_player_stats.dmg_output_light*1.2;
            									#endregion
            									break;
            								}
                                        }
									#endregion
									obj_player_stats.el_count_light --;
									break;
								case 4:
									#region WIND
                                        scr_enemy_boss_weakness_destroy(spr_w_icon_wind);   
                                        if turn!=3 {
    										switch(obj_enemy_parent.EnemyCreator.weak_res_wind){
            								case -1: 
            									#region ЕСТЬ РЕЗИСТ
            										obj_enemy_parent.EnemyCreator.enemy_hp -= obj_player_stats.dmg_output_wind*0.5;	
            										var dmg = instance_create_depth(obj_enemy_parent.x,obj_enemy_parent.y,obj_enemy_parent.depth-10,obj_dmgdigit_crit);
            										dmg.number =  obj_player_stats.dmg_output_wind*0.5;
            									#endregion
            									break;
            								case 0: 
            									#region НИЧЕГО
            										obj_enemy_parent.EnemyCreator.enemy_hp -= obj_player_stats.dmg_output_wind*0.8;		
            										var dmg = instance_create_depth(obj_enemy_parent.x,obj_enemy_parent.y,obj_enemy_parent.depth-10,obj_dmgdigit_crit);
            										dmg.number =  obj_player_stats.dmg_output_wind*0.8;
            									#endregion	
            									break;
            								case 1: 
            									#region УЯЗВИМОСТЬ
            										obj_enemy_parent.EnemyCreator.enemy_hp -= obj_player_stats.dmg_output_wind*1.2;	
            										var dmg = instance_create_depth(obj_enemy_parent.x,obj_enemy_parent.y,obj_enemy_parent.depth-10,obj_dmgdigit_crit);
            										dmg.number =  obj_player_stats.dmg_output_wind*1.2;
            									#endregion
            									break;
            								}
                                        }
									#endregion
									obj_player_stats.el_count_wind --;
									break;
							}
							#endregion
							break;
						case 1:
							#region FIRE
                                scr_enemy_boss_weakness_destroy(spr_w_icon_fire);
                                if turn!=3 {
    								switch(obj_enemy_parent.EnemyCreator.weak_res_fire){
    								case -1: 
    									#region ЕСТЬ РЕЗИСТ
    										obj_enemy_parent.EnemyCreator.enemy_hp -= obj_player_stats.dmg_output_fire*0.5;	
    										var dmg = instance_create_depth(obj_enemy_parent.x,obj_enemy_parent.y,obj_enemy_parent.depth-10,obj_dmgdigit_crit);
    										dmg.number =  obj_player_stats.dmg_output_fire*0.5;
    									#endregion
    									break;
    								case 0: 
    									#region НИЧЕГО
    										obj_enemy_parent.EnemyCreator.enemy_hp -= obj_player_stats.dmg_output_fire*0.8;		
    										var dmg = instance_create_depth(obj_enemy_parent.x,obj_enemy_parent.y,obj_enemy_parent.depth-10,obj_dmgdigit_crit);
    										dmg.number =  obj_player_stats.dmg_output_fire*0.8;
    									#endregion	
    									break;
    								case 1: 
    									#region УЯЗВИМОСТЬ
    										obj_enemy_parent.EnemyCreator.enemy_hp -= obj_player_stats.dmg_output_fire*1.2;	
    										var dmg = instance_create_depth(obj_enemy_parent.x,obj_enemy_parent.y,obj_enemy_parent.depth-10,obj_dmgdigit_crit);
    										dmg.number =  obj_player_stats.dmg_output_fire*1.2;
    									#endregion
    									break;
    								}
                                }
							#endregion					
							break;
						case 2:
							#region ICE
                                scr_enemy_boss_weakness_destroy(spr_w_icon_ice);
                                if turn!=3 {
    								switch(obj_enemy_parent.EnemyCreator.weak_res_ice){
    								case -1: 
    									#region ЕСТЬ РЕЗИСТ
    										obj_enemy_parent.EnemyCreator.enemy_hp -= obj_player_stats.dmg_output_ice*0.5;	
    										var dmg = instance_create_depth(obj_enemy_parent.x,obj_enemy_parent.y,obj_enemy_parent.depth-10,obj_dmgdigit_crit);
    										dmg.number =  obj_player_stats.dmg_output_ice*0.5;
    									#endregion
    									break;
    								case 0: 
    									#region НИЧЕГО
    										obj_enemy_parent.EnemyCreator.enemy_hp -= obj_player_stats.dmg_output_ice*0.8;		
    										var dmg = instance_create_depth(obj_enemy_parent.x,obj_enemy_parent.y,obj_enemy_parent.depth-10,obj_dmgdigit_crit);
    										dmg.number =  obj_player_stats.dmg_output_ice*0.8;
    									#endregion	
    									break;
    								case 1: 
    									#region УЯЗВИМОСТЬ
    										obj_enemy_parent.EnemyCreator.enemy_hp -= obj_player_stats.dmg_output_ice*1.5;	
    										var dmg = instance_create_depth(obj_enemy_parent.x,obj_enemy_parent.y,obj_enemy_parent.depth-10,obj_dmgdigit_crit);
    										dmg.number =  obj_player_stats.dmg_output_ice*1.5;
    									#endregion
    									break;
    								}
                                }
							#endregion					
							break;
						case 3:
							#region LIGHT
                                scr_enemy_boss_weakness_destroy(spr_w_icon_light);
                                {
								    switch(obj_enemy_parent.EnemyCreator.weak_res_light){
    								case -1: 
    									#region ЕСТЬ РЕЗИСТ
    										obj_enemy_parent.EnemyCreator.enemy_hp -= obj_player_stats.dmg_output_light*0.5;	
    										var dmg = instance_create_depth(obj_enemy_parent.x,obj_enemy_parent.y,obj_enemy_parent.depth-10,obj_dmgdigit_crit);
    										dmg.number =  obj_player_stats.dmg_output_light*0.5;
    									#endregion
    									break;
    								case 0: 
    									#region НИЧЕГО
    										obj_enemy_parent.EnemyCreator.enemy_hp -= obj_player_stats.dmg_output_light*0.8;		
    										var dmg = instance_create_depth(obj_enemy_parent.x,obj_enemy_parent.y,obj_enemy_parent.depth-10,obj_dmgdigit_crit);
    										dmg.number =  obj_player_stats.dmg_output_light*0.8;
    									#endregion	
    									break;
    								case 1: 
    									#region УЯЗВИМОСТЬ
    										obj_enemy_parent.EnemyCreator.enemy_hp -= obj_player_stats.dmg_output_light*1.2;	
    										var dmg = instance_create_depth(obj_enemy_parent.x,obj_enemy_parent.y,obj_enemy_parent.depth-10,obj_dmgdigit_crit);
    										dmg.number =  obj_player_stats.dmg_output_light*1.2;
    									#endregion
    									break;
    								}
                                }
							#endregion					
							break;
						case 4:
							#region WIND
                                scr_enemy_boss_weakness_destroy(spr_w_icon_wind);
                                if turn!=3 {
    								switch(obj_enemy_parent.EnemyCreator.weak_res_wind){
    								case -1: 
    									#region ЕСТЬ РЕЗИСТ
    										obj_enemy_parent.EnemyCreator.enemy_hp -= obj_player_stats.dmg_output_wind*0.5;	
    										var dmg = instance_create_depth(obj_enemy_parent.x,obj_enemy_parent.y,obj_enemy_parent.depth-10,obj_dmgdigit_crit);
    										dmg.number =  obj_player_stats.dmg_output_wind*0.5;
    									#endregion
    									break;
    								case 0: 
    									#region НИЧЕГО
    										obj_enemy_parent.EnemyCreator.enemy_hp -= obj_player_stats.dmg_output_wind*0.8;		
    										var dmg = instance_create_depth(obj_enemy_parent.x,obj_enemy_parent.y,obj_enemy_parent.depth-10,obj_dmgdigit_crit);
    										dmg.number =  obj_player_stats.dmg_output_wind*0.8;
    									#endregion	
    									break;
    								case 1: 
    									#region УЯЗВИМОСТЬ
    										obj_enemy_parent.EnemyCreator.enemy_hp -= obj_player_stats.dmg_output_wind*1.2;	
    										var dmg = instance_create_depth(obj_enemy_parent.x,obj_enemy_parent.y,obj_enemy_parent.depth-10,obj_dmgdigit_crit);
    										dmg.number =  obj_player_stats.dmg_output_wind*1.2;
    									#endregion
    									break;
    								}
                                }
							#endregion					
							break;
					}
													   
					
				} else if place_meeting(x,y,obj_action_bar_element) {
					 
				 // ELEMENTAL DMG OUTPUT
					
					switch(obj_action_bar_element.sprite_index){
						case spr_action_bar_fire	   : 
						
						// FIRE
						scr_enemy_boss_weakness_destroy(spr_w_icon_fire);	
                        if turn!=3 {
    						switch(obj_enemy_parent.EnemyCreator.weak_res_fire){
    							case -1: 
    								#region ЕСТЬ РЕЗИСТ
    									obj_enemy_parent.EnemyCreator.enemy_hp -= obj_player_stats.dmg_output_fire*0.5;	
    									var dmg = instance_create_depth(obj_enemy_parent.x,obj_enemy_parent.y,obj_enemy_parent.depth-10,obj_dmgdigit_crit);
    									dmg.number =  obj_player_stats.dmg_output_fire*0.5;
    								#endregion
    								break;
    							case 0: 
    								#region НИЧЕГО
    									obj_enemy_parent.EnemyCreator.enemy_hp -= obj_player_stats.dmg_output_fire*0.8;		
    									var dmg = instance_create_depth(obj_enemy_parent.x,obj_enemy_parent.y,obj_enemy_parent.depth-10,obj_dmgdigit_crit);
    									dmg.number =  obj_player_stats.dmg_output_fire*0.8;
    								#endregion	
    								break;
    							case 1: 
    								#region УЯЗВИМОСТЬ
    									if obj_enemy_parent.weak_fire_t = 0 {
    										obj_enemy_parent.weak_fire_t = 300
    										obj_enemy_parent.EnemyCreator.enemy_hp -= obj_player_stats.dmg_output_fire*1.2;	
    										var dmg = instance_create_depth(obj_enemy_parent.x,obj_enemy_parent.y,obj_enemy_parent.depth-10,obj_dmgdigit_crit);
    										dmg.number =  obj_player_stats.dmg_output_fire*1.2;
    									} else {
    										obj_enemy_parent.EnemyCreator.enemy_hp -= obj_player_stats.dmg_output_fire*0.7;	
    										var dmg = instance_create_depth(obj_enemy_parent.x,obj_enemy_parent.y,obj_enemy_parent.depth-10,obj_dmgdigit_crit);
    										dmg.number =  obj_player_stats.dmg_output_fire*0.7;
    									}
    								#endregion
    								break;
    							}							
                        }
						
						break;
						case spr_action_bar_ice		   : 
						
						// ICE
						scr_enemy_boss_weakness_destroy(spr_w_icon_ice);
                        if turn!=3 {
    						switch(obj_enemy_parent.EnemyCreator.weak_res_ice){
    							case -1:
    								#region ЕСТЬ РЕЗИСТ
    									obj_enemy_parent.EnemyCreator.enemy_hp -= obj_player_stats.dmg_output_ice*0.5;	
    									var dmg = instance_create_depth(obj_enemy_parent.x,obj_enemy_parent.y,obj_enemy_parent.depth-10,obj_dmgdigit_crit);
    									dmg.number =  obj_player_stats.dmg_output_ice*0.5;
    								#endregion
    								break;
    							case 0:
    								#region НИЧЕГО
    									obj_enemy_parent.EnemyCreator.enemy_hp -= obj_player_stats.dmg_output_ice*0.8;		
    									var dmg = instance_create_depth(obj_enemy_parent.x,obj_enemy_parent.y,obj_enemy_parent.depth-10,obj_dmgdigit_crit);
    									dmg.number =  obj_player_stats.dmg_output_ice*0.8;
    								#endregion
    								break;
    							case 1:
    								#region УЯЗВИМОСТЬ
    									if obj_enemy_parent.weak_ice_t = 0 {
    										obj_enemy_parent.weak_ice_t = 300
    										obj_enemy_parent.EnemyCreator.enemy_hp -= obj_player_stats.dmg_output_ice*1.2;	
    										var dmg = instance_create_depth(obj_enemy_parent.x,obj_enemy_parent.y,obj_enemy_parent.depth-10,obj_dmgdigit_crit);
    										dmg.number =  obj_player_stats.dmg_output_ice*1.2;
    									} else {
    										obj_enemy_parent.EnemyCreator.enemy_hp -= obj_player_stats.dmg_output_ice*0.7;	
    										var dmg = instance_create_depth(obj_enemy_parent.x,obj_enemy_parent.y,obj_enemy_parent.depth-10,obj_dmgdigit_crit);
    										dmg.number =  obj_player_stats.dmg_output_ice*0.7;
    									}
    								#endregion
    								break;
    						}
                        }
												
						break;
						case spr_action_bar_lightning  : 
						
						// LIGHT
						scr_enemy_boss_weakness_destroy(spr_w_icon_light);
                        if turn!=3 {
    						switch(obj_enemy_parent.EnemyCreator.weak_res_light){
    							case -1:
    								#region ЕСТЬ РЕЗИСТ
    									obj_enemy_parent.EnemyCreator.enemy_hp -= obj_player_stats.dmg_output_light*0.5;	
    									var dmg = instance_create_depth(obj_enemy_parent.x,obj_enemy_parent.y,obj_enemy_parent.depth-10,obj_dmgdigit_crit);
    									dmg.number =  obj_player_stats.dmg_output_light*0.5;
    								#endregion
    								break;
    							case 0: 
    								#region НИЧЕГО
    									obj_enemy_parent.EnemyCreator.enemy_hp -= obj_player_stats.dmg_output_light*0.8;		
    									var dmg = instance_create_depth(obj_enemy_parent.x,obj_enemy_parent.y,obj_enemy_parent.depth-10,obj_dmgdigit_crit);
    									dmg.number =  obj_player_stats.dmg_output_light*0.8;
    								#endregion
    								break;
    							case 1:
    								#region УЯЗВИМОСТЬ
    									if obj_enemy_parent.weak_light_t = 0 {
    										obj_enemy_parent.weak_light_t = 300
    										obj_enemy_parent.EnemyCreator.enemy_hp -= obj_player_stats.dmg_output_light*1.2;	
    										var dmg = instance_create_depth(obj_enemy_parent.x,obj_enemy_parent.y,obj_enemy_parent.depth-10,obj_dmgdigit_crit);
    										dmg.number =  obj_player_stats.dmg_output_light*1.2;
    									} else {
    										obj_enemy_parent.EnemyCreator.enemy_hp -= obj_player_stats.dmg_output_light*0.7;	
    										var dmg = instance_create_depth(obj_enemy_parent.x,obj_enemy_parent.y,obj_enemy_parent.depth-10,obj_dmgdigit_crit);
    										dmg.number =  obj_player_stats.dmg_output_light*0.7;
    									}
    								#endregion
    								break;
    						}
                        }			
						break;
						case spr_action_bar_wind	   : 
						
						// WIND
						scr_enemy_boss_weakness_destroy(spr_w_icon_wind);
                        if turn!=3 {
    						switch(obj_enemy_parent.EnemyCreator.weak_res_wind){
    							case -1:
    								#region ЕСТЬ РЕЗИСТ
    									obj_enemy_parent.EnemyCreator.enemy_hp -= obj_player_stats.dmg_output_wind*0.5;	
    									var dmg = instance_create_depth(obj_enemy_parent.x,obj_enemy_parent.y,obj_enemy_parent.depth-10,obj_dmgdigit_crit);
    									dmg.number =  obj_player_stats.dmg_output_wind*0.5;
    								#endregion
    								break;
    							case 0:
    								#region НИЧЕГО
    									obj_enemy_parent.EnemyCreator.enemy_hp -= obj_player_stats.dmg_output_wind*0.8;		
    									var dmg = instance_create_depth(obj_enemy_parent.x,obj_enemy_parent.y,obj_enemy_parent.depth-10,obj_dmgdigit_crit);
    									dmg.number =  obj_player_stats.dmg_output_wind*0.8;
    								#endregion
    								break;
    							case 1:
    								#region УЯЗВИМОСТЬ
    									if obj_enemy_parent.weak_wind_t = 0 {
    										obj_enemy_parent.weak_wind_t = 300
    										obj_enemy_parent.EnemyCreator.enemy_hp -= obj_player_stats.dmg_output_wind*1.2;	
    										var dmg = instance_create_depth(obj_enemy_parent.x,obj_enemy_parent.y,obj_enemy_parent.depth-10,obj_dmgdigit_crit);
    										dmg.number =  obj_player_stats.dmg_output_wind*1.2;
    									} else {
    										obj_enemy_parent.EnemyCreator.enemy_hp -= obj_player_stats.dmg_output_wind*0.7;	
    										var dmg = instance_create_depth(obj_enemy_parent.x,obj_enemy_parent.y,obj_enemy_parent.depth-10,obj_dmgdigit_crit);
    										dmg.number =  obj_player_stats.dmg_output_wind*0.7;
    									}
    								#endregion
    								break;
    						}
                        }
						break;
					}
					
				} else if place_meeting(x,y,obj_action_bar_transparent_small) || place_meeting(x,y,obj_action_bar_transparent_big){
					// MISS/LOWDMG
                    if turn!=3 {
    				   	obj_enemy_parent.EnemyCreator.enemy_hp -= obj_player_stats.dmg_output_miss;
    					var dmg = instance_create_depth(obj_enemy_parent.x,obj_enemy_parent.y,obj_enemy_parent.depth-10,obj_dmgdigit_miss);
    					dmg.number = obj_player_stats.dmg_output_miss;				
                    }
				} else if place_meeting(x,y,obj_action_bar_transparent_miss) {
					// MISS/LOWDMG
                    if turn!=3 {
    				   	obj_enemy_parent.EnemyCreator.enemy_hp -= obj_player_stats.dmg_output_miss;	
    					var dmg = instance_create_depth(obj_enemy_parent.x,obj_enemy_parent.y,obj_enemy_parent.depth-10,obj_dmgdigit_miss);
    					dmg.number = 0;
                    }
					//dmg.number = obj_player_stats.dmg_output_miss;
				}	
			}				
			obj_action_bar_player.move = 0;
			instance_destroy(obj_action_bar_parent);
			instance_destroy()
		}		
		break;
}


if (x >= 380 && action = 0) {x = 380;action = 1;}


/*
