/// @description Insert description here
// You can write your code in this editor

/* STATES /////////////

1 - начало

1.1 - //  Минискарабы 5 шт с противоположной стороный 
1.2 - //  2 улья  + 1 сандре
1.3 - //  1 сандер 1 улье 1 большой летающий 1 сандер
1.4 - //  2 сандер 2 улья 1 большой летающий
1.5 - // получение сундука
1.51 - // Разбивка сундук
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
		#region  5 скарабов
			if t < 350 t++;
			if t > 49 && t < 301 && t mod 50 = 0
			{
				if instance_exists(obj_Player)
				{
					if obj_Player.x > room_width/2 
					{
						instance_create_depth(-64,random_range(270-32,270-96),0,obj_scarab_mini)	
					} else instance_create_depth(480+64,random_range(270-32,270-96),0,obj_scarab_mini)	
				}
			}		
			if t > 320 && !instance_exists(obj_scarab_mini) 
			{
				t = 0;state = 1.2;
			}
		#endregion	
		break;
	case 1.2:
		#region  2 улья + 1 сандер
		if t < 180 t++;
		switch(t)
		{
			case 50:
				if obj_Player.x > room_width/2 var sc1 = instance_create_depth(48,240,-1,obj_molded_big_spawner_n)
				else  var sc1 = instance_create_depth(432,240,depth,obj_molded_big_spawner_n)				
				sc1.obj_cr = obj_scarab_nest;
				sc1.y_cr = -16;
				break;
			case 100:
				if obj_Player.x > room_width/2 var sc1 = instance_create_depth(64,240,-1,obj_molded_big_spawner_n)
				else  var sc1 = instance_create_depth(480-64,240,depth,obj_molded_big_spawner_n)				
				sc1.obj_cr = obj_scarab_nest;
				sc1.y_cr = -16;
				break;
			case 130:
				if obj_Player.x > room_width/2 var sc1 = instance_create_depth(112,240,-1,obj_molded_big_spawner_n)
				else  var sc1 = instance_create_depth(368,240,depth,obj_molded_big_spawner_n)				
				sc1.obj_cr = obj_sander;
				sc1.y_cr = 16;
				break;
			case 180:
				if !instance_exists(obj_sander) && !instance_exists(obj_scarab_nest) && !instance_exists(obj_scarab_nest_mini) 
				{
					t =0 ;
					state = 1.3;
				}
				break;
		}
		#endregion
		break;
	case 1.3:
		#region 1 сандер 1 улей 1 большой летающий 1 сандер
		if t < 190 t++;
		switch(t)
		{
			case 50:
				if obj_Player.x > room_width/2 var sc1 = instance_create_depth(64,240,-1,obj_molded_big_spawner_n)
				else  var sc1 = instance_create_depth(416,240,depth,obj_molded_big_spawner_n)				
				sc1.obj_cr = obj_sander;
				sc1.y_cr = 16;
				break;
			case 60:
				if obj_Player.x > room_width/2 var sc1 = instance_create_depth(48,240,-1,obj_molded_big_spawner_n)
				else  var sc1 = instance_create_depth(480-48,240,depth,obj_molded_big_spawner_n)				
				sc1.obj_cr = obj_scarab_nest;
				sc1.y_cr = -16;
				break;
			case 100:
				if obj_Player.x > room_width/2 var sc1 = instance_create_depth(64,176,-1,obj_molded_big_spawner_n)
				else  var sc1 = instance_create_depth(416,176,depth,obj_molded_big_spawner_n)				
				sc1.obj_cr = obj_scarab_horizontal;
				break;
			case 140:
				if obj_Player.x > room_width/2 var sc1 = instance_create_depth(96,240,-1,obj_molded_big_spawner_n)
				else  var sc1 = instance_create_depth(84,240,depth,obj_molded_big_spawner_n)				
				sc1.obj_cr = obj_sander;
				sc1.y_cr = 16;
				break;
			case 190:
				if !instance_exists(obj_scarab_mini) &&
				!instance_exists(obj_scarab_horizontal) && !instance_exists(obj_sander) && !instance_exists(obj_scarab_nest)
				{
					t = 0;
					state = 1.4;
				}
				break;
		}
		#endregion
		break;
	case 1.4:
		#region 2 сандер 2 улья 1 большой летающий
		if t < 300 t++;
		switch(t)
		{
			case 50:
				if obj_Player.x > room_width/2 
				{
					var e1 = instance_create_depth(96,240,-1,obj_molded_big_spawner_n);
					e1.obj_cr = obj_sander;
					e1.y_cr = 16;
					var e2 = instance_create_depth(48,240,-1,obj_molded_big_spawner_n);
					e2.obj_cr = obj_sander;
					e2.y_cr = 16;
				} else 
				{
					var e1 = instance_create_depth(384,240,-1,obj_molded_big_spawner_n);
					e1.obj_cr = obj_sander;
					e1.y_cr = 16;
					var e2 = instance_create_depth(432,240,-1,obj_molded_big_spawner_n);
					e2.obj_cr = obj_sander;
					e2.y_cr = 16;	
				}
				break;
			case 100:
				if obj_Player.x > room_width/2 
				{
					var e1 = instance_create_depth(96,240,-1,obj_molded_big_spawner_n);
					e1.obj_cr = obj_scarab_nest;
					e1.y_cr = -16;
					var e2 = instance_create_depth(48,240,-1,obj_molded_big_spawner_n);
					e2.obj_cr = obj_scarab_nest;
					e2.y_cr = -16;
				} else 
			{
				var e1 = instance_create_depth(384,240,-1,obj_molded_big_spawner_n);
				e1.obj_cr = obj_scarab_nest;
				e1.y_cr = -16;
				var e2 = instance_create_depth(432,240,-1,obj_molded_big_spawner_n);
				e2.obj_cr = obj_scarab_nest;
				e2.y_cr = -16;	
			}
				break;
			case 200:
				if obj_Player.x > x 
				{
					var e1 = instance_create_depth(64,192,-1,obj_molded_big_spawner_n);
					e1.obj_cr = obj_scarab_horizontal;					
				} else 
				{
					var e1 = instance_create_depth(416,192,-1,obj_molded_big_spawner_n);
					e1.obj_cr = obj_scarab_horizontal;			
				}	
				break;
			case 300:
				if !instance_exists(obj_sander) && !instance_exists(obj_scarab_nest)
				&& !instance_exists(obj_scarab_mini) && !instance_exists(obj_scarab_horizontal)
				{
					state = 1.5;
					t = 0;
				}
				break;
		}
		#endregion
		break;
	case 1.5:	
		    if t < 22 t++;
		    if t = 20 instance_create_depth(64,256,1,obj_chest_de_1);
		break;
	case 1.51:
		t++;
	    if t = 100
	    {
	        t = 0;
	        state = 1.6;
	    }
		break;
	case 1.6:
		t++;
		switch(t)
		{
			case 50:
			instance_create_depth(224,176,depth-1,obj_sfx_player_dead_big);
			instance_create_depth(240,-48,depth,obj_boss_de_appear)
			
				break;
			case 60:
				instance_create_depth(224,176,1,obj_pad_blue);
				t = 0;
				state = 1.7;
			break;
		}
		break;
	#endregion	
	#region  вторая фаза
	case 2:
	t++;	
	if t = 50 
	{
		instance_create_depth(336,256,1,obj_chest_de_2);
		t = 0;
		state = 2.1;
	}
	break;
	
	case 2.2:
		t++;
		if t = 100
		{
			if instance_exists(obj_platform_3_v_e_d1_boss_mov)
			{
				var close = instance_create_depth(obj_platform_3_v_e_d1_boss_mov.x,obj_platform_3_v_e_d1_boss_mov.y,50,obj_ow_platform_3_d1_boss_mov)
				close.deactivate = 1;
				
			}	
			obj_platform_3_v_e_d1_boss_mov.state = 0;
			t = 0;
			state = 2.3;
			instance_create_depth(0,0,0,obj_boss_de_phase2_controller);
		}	
		break;
	#endregion	
	#region третья фаза
	case 3:
		t++; 
        if t = 20{
            
           if global.secrets_d_endurance = 0
        {
            instance_create_depth(240,256,0,obj_chest_de_3_s);   
        } else instance_create_depth(240,256,0,obj_chest_de_3);  
        instance_destroy(); 
        }
		
		break;
	#endregion
}




        

