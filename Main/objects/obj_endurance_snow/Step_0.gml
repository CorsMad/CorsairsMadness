/// @description Insert description here
// You can write your code in this editor

/* STATES /////////////

1 - начало

1.1 - //  СкТопор СкТопор Летающий Череп 4 Шт
1.2 - //  СкТопор Бронированый Бронированый 
1.3 - //  ЛедянойМаг Бронированый Летающий череп
1.4 - //  ЛедянойМаг Бронирован СкТопор Бронирован
1.5 - // получение сундука
1.51 -// Разбивка сундук
1.6 - // разрушение блоков под землей

2.1 - Босс 1 - 2 и 3 фазы
2.2 - получение сундука

3.1 - Босс 2 - 2 и 3 фазы
3.2 - получение монеты

*/
switch(state) 
{
	case 1:
		t++;
		if t = 100
		{
		    state = 1.1;
		    t = 0;
		}
		break;
	#region  Первая фаза
	
	case 1.1:
		#region СкТопор СкТопор Летающий Череп 4 Шт
		if t < 200 t++;
		switch(t)
		{
			case 50:
				if obj_Player.x > room_width/2 {
				var e1 = instance_create_depth(128,160,0,obj_molded_big_spawner_n);
				e1.obj_cr = obj_skeleton_thrower;
				e1.y_cr = 16;
				} else {var e2 = instance_create_depth(352,160,0,obj_molded_big_spawner_n)
				e2.obj_cr = obj_skeleton_thrower
				e2.y_cr = 16}
				break;
			case 130:
				if obj_Player.x > room_width/2 {				
					var rsk = instance_create_depth(-64,208,0,obj_scull_frozen_r)	
				} else {
					var lsk = instance_create_depth(512,208,0,obj_scull_frozen)	
				}
				break;
			case 150:
				if obj_Player.x > room_width/2 {
				var e1 = instance_create_depth(96,224,0,obj_molded_big_spawner_n);
				e1.obj_cr = obj_skeleton_thrower;
				e1.y_cr = 16;
				} else {var e2 = instance_create_depth(368,224,0,obj_molded_big_spawner_n)
				e2.obj_cr = obj_skeleton_thrower
				e2.y_cr = 16}
				break;
			case 160:
				instance_create_depth(512,208,0,obj_scull_frozen);
				instance_create_depth(-64,208,0,obj_scull_frozen_r);
				break;
			case 180:
				if obj_Player.x > room_width/2 {				
					var rsk = instance_create_depth(-64,208,0,obj_scull_frozen_r)	
				} else {
					var lsk = instance_create_depth(512,208,0,obj_scull_frozen)	
				}
				break;
			case 190:
				if obj_Player.x > room_width/2 {				
					var rsk = instance_create_depth(-64,208,0,obj_scull_frozen_r)	
				} else {
					var lsk = instance_create_depth(512,208,0,obj_scull_frozen)	
				}
				break;
			case 200:
				if !instance_exists(obj_scull_frozen)
				&& !instance_exists(obj_scull_frozen_r)
				&& !instance_exists(obj_skeleton_thrower)
				{
					t =0;
					state = 1.2;
				}
				break;				
		}		
		#endregion
		break;
	case 1.2:
		#region СкТопор Бронированый Бронированый 
		if t < 500 t++;
        		switch(t)
		{
			case 50:
				if obj_Player.x > room_width/2 {
				var e1 = instance_create_depth(128,160,0,obj_molded_big_spawner_n);
				e1.obj_cr = obj_skeleton_thrower;
				e1.y_cr = 16;
				} else {var e2 = instance_create_depth(352,160,0,obj_molded_big_spawner_n)
				e2.obj_cr = obj_skeleton_thrower
				e2.y_cr = 16}
				break;
			case 100:
				if obj_Player.x > room_width/2 {
				var e1 = instance_create_depth(80,224,0,obj_molded_big_spawner_n);
				e1.obj_cr = obj_armored_thing;
				e1.y_cr = 16;
				} else {
				var e1 = instance_create_depth(400,224,0,obj_molded_big_spawner_n);
				e1.obj_cr = obj_armored_thing;
				e1.y_cr = 16;		
				}
				break;
			case 400:
				if obj_Player.x > room_width/2 {
				var e1 = instance_create_depth(80,224,0,obj_molded_big_spawner_n);
				e1.obj_cr = obj_armored_thing;
				e1.y_cr = 16;
				} else {
				var e1 = instance_create_depth(400,224,0,obj_molded_big_spawner_n);
				e1.obj_cr = obj_armored_thing;
				e1.y_cr = 16;		
				}
				break;
			case 500:
				if !instance_exists(obj_skeleton_thrower)
				&& !instance_exists(obj_armored_thing)
				{
					t = 0;
					state = 1.3;
				}
				break;
			
			
				
		}	
		#endregion
		break;
	case 1.3:
		#region ЛедянойМаг Бронированый Летающий череп
		if t < 150 t++;
		switch(t)
		{
			case 50: 
				if obj_Player.x > room_width/2{
					var r1 = instance_create_depth(64,208,0,obj_molded_big_spawner_n)	
					r1.obj_cr = obj_frozen_mage_endurance;					
				} else {
					var r1 = instance_create_depth(416,208,0,obj_molded_big_spawner_n)	
					r1.obj_cr = obj_frozen_mage_endurance;		
				}
				break;
			case 100:
				if obj_Player.x > room_width/2 {
				var e1 = instance_create_depth(80,224,0,obj_molded_big_spawner_n);
				e1.obj_cr = obj_armored_thing;
				e1.y_cr = 16;
				} else {
				var e1 = instance_create_depth(400,224,0,obj_molded_big_spawner_n);
				e1.obj_cr = obj_armored_thing;
				e1.y_cr = 16;		
				}
				break;
			case 120:
				if obj_Player.x > room_width/2 {				
					var rsk = instance_create_depth(-64,208,0,obj_scull_frozen_r)	
				} else {
					var lsk = instance_create_depth(512,208,0,obj_scull_frozen)	
				}
				break;
			case 130:
				if obj_Player.x > room_width/2 {				
					var rsk = instance_create_depth(-64,208,0,obj_scull_frozen_r)	
				} else {
					var lsk = instance_create_depth(512,208,0,obj_scull_frozen)	
				}
				break;
			case 140:
				if obj_Player.x > room_width/2 {				
					var rsk = instance_create_depth(-64,208,0,obj_scull_frozen_r)	
				} else {
					var lsk = instance_create_depth(512,208,0,obj_scull_frozen)	
				}
				break;
			case 150:
				if !instance_exists(obj_scull_frozen) 
				&& !instance_exists(obj_scull_frozen_r)
				&& !instance_exists(obj_frozen_mage_endurance)
				&& !instance_exists(obj_armored_thing)
				{
					t = 0;
					state = 1.4;
				}
				break;
		}
		#endregion
		break;
	case 1.4:
		#region ЛедянойМаг Бронирован СкТопор Бронирован
		if t < 550 t++;
		switch(t)
		{
			case 50:
				if obj_Player.x > room_width/2{
					var r1 = instance_create_depth(48,144,0,obj_molded_big_spawner_n)	
					r1.obj_cr = obj_frozen_mage_endurance;					
				} else {
					var r1 = instance_create_depth(432,144,0,obj_molded_big_spawner_n)	
					r1.obj_cr = obj_frozen_mage_endurance;		
				}				
				break;
			case 100:
				if obj_Player.x > room_width/2 {
				var e1 = instance_create_depth(80,224,0,obj_molded_big_spawner_n);
				e1.obj_cr = obj_armored_thing;
				e1.y_cr = 16;
				} else {
				var e1 = instance_create_depth(400,224,0,obj_molded_big_spawner_n);
				e1.obj_cr = obj_armored_thing;
				e1.y_cr = 16;		
				}
				break;
			case 200:
				if obj_Player.x > room_width/2 {
				var e1 = instance_create_depth(128,160,0,obj_molded_big_spawner_n);
				e1.obj_cr = obj_skeleton_thrower;
				e1.y_cr = 16;
				} else {var e2 = instance_create_depth(352,160,0,obj_molded_big_spawner_n)
				e2.obj_cr = obj_skeleton_thrower
				e2.y_cr = 16}
				break;
			case 450:
				if obj_Player.x > room_width/2 {
				var e1 = instance_create_depth(80,224,0,obj_molded_big_spawner_n);
				e1.obj_cr = obj_armored_thing;
				e1.y_cr = 16;
				} else {
				var e1 = instance_create_depth(400,224,0,obj_molded_big_spawner_n);
				e1.obj_cr = obj_armored_thing;
				e1.y_cr = 16;		
				}
				break;
			case 550:
				if !instance_exists(obj_armored_thing)
				&& !instance_exists(obj_skeleton_thrower)
				&& !instance_exists(obj_frozen_mage_endurance)
				{
					t = 0;
					state = 1.5;
				}
				break;				
		}
		#endregion
		break;
	case 1.5:	
		if t < 22 t++;
		if t = 20 instance_create_depth(112,240,20,obj_chest_sne_1);
		break;
	case 1.51:
		t++;
	    if t = 100
	    {
			if instance_exists(obj_block_endurance_snow){
				obj_block_endurance_snow.state = 1;	
			}
	        t = 0;
	        state = 1.6;
	    }
		break;
	case 1.6:
		t++;
		switch(t)
		{
			case 50:
			instance_create_depth(240,144,depth,obj_boss_se_phase2_appear)
			state = 2;
			t = 0;
			break;
		}
		break;
	#endregion	
	#region  вторая фаза
	case 2:
		if instance_exists(obj_boss_se_phase2_1_death) && 
		instance_exists(obj_boss_se_phase2_2_death)
		{
			obj_boss_se_phase2_1_death.state = 3;
			obj_boss_se_phase2_2_death.state = 3;
			instance_create_depth(obj_boss_se_phase2_1_death.x,obj_boss_se_phase2_1_death.y,obj_boss_se_phase2_1_death.depth-1,obj_hpmax_some_2mana_gain_gift);
			state = 2.1;
		}
		break;
	case 2.1:
		if instance_exists(obj_boss_se_phase2_1_death) && 
		instance_exists(obj_boss_se_phase2_2_death)
		{
			if obj_boss_se_phase2_1_death.state = 4 &&
			obj_boss_se_phase2_2_death.state = 4
			{
				state = 2.2;
				t = 0;
			}
		}
		break;
	case 2.2:
		t++;
	    if t = 1
	    {
	        instance_create_depth(240+32,136+32,depth-1,obj_sfx_explosion_bomb);
	        instance_create_depth(240-32,136+32,depth-1,obj_sfx_explosion_bomb);
	        instance_create_depth(240+32,136-32,depth-1,obj_sfx_explosion_bomb);
	        instance_create_depth(240-32,136-32,depth-1,obj_sfx_explosion_bomb);
	        instance_create_depth(240,136,depth-1,obj_sfx_explosion_bomb);   
	    }
	    if t = 10
	    {
	        t = 0;
	        instance_destroy(obj_boss_se_phase2_1_death);
	        instance_destroy(obj_boss_se_phase2_2_death);
	        instance_create_depth(224,128,0,obj_boss_se_phase3_1);
	        instance_create_depth(256,128,0,obj_boss_se_phase3_2);
	        instance_create_depth(224,160,0,obj_boss_se_phase3_3);
	        instance_create_depth(256,160,0,obj_boss_se_phase3_4);
	        state = 2.3;        
	    }
		break;
	case 2.3:
			if !instance_exists(obj_boss_se_phase3_1) 
			&& !instance_exists(obj_boss_se_phase3_2)
			&& !instance_exists(obj_boss_se_phase3_3)
			&& !instance_exists(obj_boss_se_phase3_4) 
			{
				state = 2.4;
				t = 0;
			}
		break;
	case 2.4:
		if t < 22 t++;
		if t = 20 instance_create_depth(368,240,10,obj_chest_sne_2);
		break;
	case 2.5:
		t++;
		if t = 150
		{
			obj_boss_se2_phase_appear.state = 1;
			t = 0;
			state = 2.6;
		}
		break;
	#endregion	
	#region третья фаза
	case 3:
		t++; 
        if t = 20{         
            
            if global.secrets_sn_endurance = 0
            {
                instance_create_depth(240,240,0,obj_chest_sne_3_s);   
            } else instance_create_depth(240,240,0,obj_chest_sne_3);  
            instance_destroy();
        }
		
		break;
	#endregion
}




        

