// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_enemy_creator(x_pos,y_pos,obj){
	t = 0;
	state+=0.5;
	var en = instance_create_depth(x_pos,y_pos,0,obj_enemy_parent);
	en.EnemyCreator = obj;
}

function scr_enemy_arrive_overall(x_pos,y_pos,spr_idle){
	x-=10;
	y=y_pos;
	sprite_index = spr_idle;
	if x <= x_pos {
		x = x_pos;
		y = y_pos;
		instance_create_depth(0,0,0,obj_player);
		instance_create_depth(0,0,0,obj_action_bar_player);
        scr_enemy_boss_attack_special_weakness(EnemyCreator.weak_count);
        weak_count_const = EnemyCreator.weak_count;
        show_debug_message(special_weakness);
		state+=1;
	}	
}

function scr_enemy_action_overall(){
	
	if weak_crit_t>0  weak_crit_t-=1;
	if weak_crit_t<=0 weak_crit_t= 0;
	
	if weak_fire_t>0  weak_fire_t-=1;
	if weak_fire_t<=0 weak_fire_t= 0;

	if weak_ice_t>0  weak_ice_t-=1;
	if weak_ice_t<=0 weak_ice_t= 0;

	if weak_light_t>0  weak_light_t-=1;
	if weak_light_t<=0 weak_light_t= 0;

	if weak_wind_t> 0 weak_wind_t-=1;
	if weak_wind_t<=0 weak_wind_t= 0;


	obj_battle_info.enemy_hp = EnemyCreator.enemy_hp;
	obj_battle_info.enemy_hp_max = EnemyCreator.enemy_hp_max;
	obj_battle_info.enemy_attack = EnemyCreator.enemy_attack;
	obj_battle_info.enemy_attack_max = EnemyCreator.enemy_attack_max;
	obj_battle_info.enemy_name = EnemyCreator.en_name;
	if EnemyCreator.enemy_hp <= 0 {
		EnemyCreator.enemy_hp = 0;
		if (obj_battle_info.player_xp_max - obj_battle_info.player_xp) > EnemyCreator.exp_gain{
				obj_battle_info.player_xp += EnemyCreator.exp_gain;
		} else obj_battle_info.player_xp = obj_battle_info.player_xp_max;
		state+=1;	
		sprite_index = EnemyCreator.s_death;
		image_index = 0;
		obj_player_sprite.sprite_index = spr_player_idle;	
		
        obj_inventory.gold += EnemyCreator.gold;
        
        instance_create_depth(x,y,depth+1,obj_gold_spawner);
        
		instance_destroy(obj_player_indicator);
		instance_destroy(obj_player_indicator_sparkle_big);
		instance_destroy(obj_player_indicator_sparkle_small);
		instance_destroy(obj_action_bar_player);
		instance_destroy(obj_player);
	}
}
	
function scr_enemy_attack(sprite_ind,enemy_dmg,slash_effect){
	EnemyCreator.enemy_attack -=EnemyCreator.enemy_attack_spd;
	if EnemyCreator.enemy_attack <=0 {
		if obj_player_stats.player_hp > 0 {
			obj_player_stats.player_hp -= enemy_dmg;		
			instance_create_depth(obj_player_sprite.x,obj_player_sprite.y+32,obj_player_sprite.depth-1,slash_effect) 
		}
		image_index = 0;
		sprite_index = sprite_ind;
		EnemyCreator.enemy_attack = EnemyCreator.enemy_attack_max	
	}
}
	
#region Босс

function scr_enemy_boss_action_overall(){
    if weak_crit_t>0  weak_crit_t-=1;
	if weak_crit_t<=0 weak_crit_t= 0;
	
	if weak_fire_t>0  weak_fire_t-=1;
	if weak_fire_t<=0 weak_fire_t= 0;

	if weak_ice_t>0  weak_ice_t-=1;
	if weak_ice_t<=0 weak_ice_t= 0;

	if weak_light_t>0  weak_light_t-=1;
	if weak_light_t<=0 weak_light_t= 0;

	if weak_wind_t> 0 weak_wind_t-=1;
	if weak_wind_t<=0 weak_wind_t= 0;


	obj_battle_info.enemy_hp = EnemyCreator.enemy_hp;
	obj_battle_info.enemy_hp_max = EnemyCreator.enemy_hp_max;
	obj_battle_info.enemy_attack = EnemyCreator.enemy_attack;
	obj_battle_info.enemy_attack_max = EnemyCreator.enemy_attack_max;
	obj_battle_info.enemy_name = EnemyCreator.en_name;
    
    switch(turn){
        case 0:
            EnemyCreator.enemy_attack -=EnemyCreator.enemy_attack_spd;
            if EnemyCreator.enemy_attack <=0 {
                turn = 1;
                scr_enemy_boss_attack(EnemyCreator.dmg); // В БУДУЩЕМ ДОБАВИТЬ СПРАЙТ
                EnemyCreator.enemy_attack = EnemyCreator.enemy_attack_max
            }
            break;
        case 1:
            EnemyCreator.enemy_attack -=EnemyCreator.enemy_attack_spd;
            if EnemyCreator.enemy_attack <=0 {
                turn = 2;
                scr_enemy_boss_attack(EnemyCreator.dmg); // В БУДУЩЕМ ДОБАВИТЬ СПРАЙТ
                EnemyCreator.enemy_attack = EnemyCreator.enemy_attack_max;
                EnemyCreator.weak_count = weak_count_const;
                obj_battle_info._weak_x_offset = 320;
                obj_battle_info._atk_alpha = -5;
            }
            break;
        case 2:
            EnemyCreator.enemy_attack -=EnemyCreator.enemy_attack_spd;
            if EnemyCreator.enemy_attack <=0 {
                turn = 3;
                scr_enemy_boss_attack(EnemyCreator.dmg); // В БУДУЩЕМ ДОБАВИТЬ СПРАЙТ
                EnemyCreator.enemy_attack = EnemyCreator.enemy_attack_max
                scr_enemy_boss_attack_special_weakness_during(EnemyCreator.weak_count);
            }
            break;
        case 3: // SPEC ATK
            scr_enemy_boss_attack_special();
            break;
        case 4: // STUN
            EnemyCreator.enemy_attack += EnemyCreator.enemy_attack_spd_stun;
            if EnemyCreator.enemy_attack >= EnemyCreator.enemy_attack_max {
                turn = 0;   
                EnemyCreator.enemy_attack = EnemyCreator.enemy_attack_max
            }
            break;
    }    
        
    if EnemyCreator.enemy_hp <= 0 {
		EnemyCreator.enemy_hp = 0;
		//if (obj_battle_info.player_xp_max - obj_battle_info.player_xp) > EnemyCreator.exp_gain{
		//		obj_battle_info.player_xp += EnemyCreator.exp_gain;
		//} else obj_battle_info.player_xp = obj_battle_info.player_xp_max;
		state+=1;	
		//sprite_index = EnemyCreator.s_death;
		//image_index = 0;
		obj_player_sprite.sprite_index = spr_player_idle;	
		
        obj_inventory.gold += EnemyCreator.gold;
        
        instance_create_depth(x,y,depth+1,obj_gold_spawner);
        
		instance_destroy(obj_player_indicator);
		instance_destroy(obj_player_indicator_sparkle_big);
		instance_destroy(obj_player_indicator_sparkle_small);
		instance_destroy(obj_action_bar_player);
		instance_destroy(obj_player);
	}
                
}

function scr_enemy_boss_attack(_enemy_dmg){
    if obj_player_stats.player_hp > 0 {
		obj_player_stats.player_hp -= _enemy_dmg;		
		//instance_create_depth(obj_player_sprite.x,obj_player_sprite.y+32,obj_player_sprite.depth-1,slash_effect) 
	}
}

function scr_enemy_boss_attack_special(){
    EnemyCreator.enemy_attack -=EnemyCreator.enemy_attack_spd_special;
    if EnemyCreator.enemy_attack <=0 {
         turn = 0;
         scr_enemy_boss_attack(EnemyCreator.dmg); // В БУДУЩЕМ ДОБАВИТЬ СПРАЙТ
         EnemyCreator.enemy_attack = EnemyCreator.enemy_attack_max  
    }
    #region слабости
    
    #endregion
    
    
}

function scr_enemy_boss_attack_special_weakness(_boss_weak_count){
    
    for (var i = 0; i < _boss_weak_count; i++) {       
        array_push(special_weakness,scr_enemy_boss_pick_weakness());   
    }
    array_delete(special_weakness,0,5)
    show_debug_message(special_weakness);
}

function scr_enemy_boss_attack_special_weakness_during(_boss_weak_count){

    array_delete(special_weakness,0,5)
    for (var i = 0; i < _boss_weak_count; i++) {       
        array_push(special_weakness,scr_enemy_boss_pick_weakness());   
    }    
    show_debug_message(special_weakness);
}

function scr_enemy_boss_pick_weakness(){
    boss_weak_array = [spr_w_icon_crit,spr_w_icon_fire,spr_w_icon_ice,spr_w_icon_light,spr_w_icon_wind,spr_w_icon_normal];    
    array_shuffeled = array_shuffle(boss_weak_array);   
    return(array_shuffeled[0]);  
}
    
function scr_enemy_boss_weakness_destroy(_dmg_type){
    //if obj_enemy_parent.special_weakness[0] != undefined {
    
    if obj_enemy_parent.turn = 3{ 
        if obj_enemy_parent.EnemyCreator.weak_count > 1 {
            if obj_enemy_parent.special_weakness[0] = _dmg_type {
                obj_enemy_parent.EnemyCreator.weak_count -=1;
                array_delete(obj_enemy_parent.special_weakness,0,1)  
                show_debug_message(obj_enemy_parent.special_weakness);
                obj_battle_info._weak_scale = 1;
				
				instance_create_depth(320-12,128-4,-1,obj_boss_weak_expl);
            }
        }
        if obj_enemy_parent.EnemyCreator.weak_count = 1 {
            if obj_enemy_parent.special_weakness[0] = _dmg_type {
                obj_enemy_parent.EnemyCreator.weak_count -=1;
                array_delete(obj_enemy_parent.special_weakness,0,1)  
                obj_enemy_parent.turn = 4;
                obj_enemy_parent.EnemyCreator.enemy_hp -= obj_player_stats.dmg_output_normal*5;
        		var dmg = instance_create_depth(obj_enemy_parent.x,obj_enemy_parent.y,obj_enemy_parent.depth-10,obj_dmgdigit_crit);
                obj_battle_info._weak_scale = 1;
        		dmg.number =  obj_player_stats.dmg_output_normal*5;
                obj_enemy_parent.EnemyCreator.enemy_attack = 0
                show_debug_message(obj_enemy_parent.special_weakness);
				
				instance_create_depth(320-12,128-4,-1,obj_boss_weak_expl);
            }
        }
    }
}

#endregion
