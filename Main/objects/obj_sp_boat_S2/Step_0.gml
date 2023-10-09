/// @description Insert description here
// You can write your code in this editor
/*
0 - 8 скелетов в игрока
1 - 4 волновых 3 мины
2 - серия камней
3 - пушка + 3 волновых + 2 лучника + 4 прямых
4 - ЧЕКПОИНТ - преграды + волновыйместо
5 - 3 мины 4 лучника
6 - серия камней с тиной
7 - 4 мины 4 спрыгивающих
8 - ЧЕКПОИНТ 4 волновые + 2 лучники прямо
9 - 2 направленых 2 волновых 2 лучника
10 - длинная серия с камнями и стенами
11 - 
12 - конец
*/

switch(state){
	case 0: 
		#region 8 скелетов в игрока
		if t < 600 t++;
		switch(t)
		{
			case 100: instance_create_depth(512,random_range(144,272),0,obj_skeleton_surf_pointing_1hp);break;
			case 150: instance_create_depth(512,random_range(144,272),0,obj_skeleton_surf_pointing_1hp);break;
			case 200: instance_create_depth(512,random_range(144,272),0,obj_skeleton_surf_pointing_1hp);break;
			case 250: instance_create_depth(512,random_range(144,272),0,obj_skeleton_surf_pointing_1hp);break;
			case 300: instance_create_depth(512,random_range(144,272),0,obj_skeleton_surf_pointing_1hp);break;
			case 350: instance_create_depth(512,random_range(144,272),0,obj_skeleton_surf_pointing_1hp);break;
			case 450: instance_create_depth(512,random_range(144,272),0,obj_skeleton_surf_pointing_2hp);break;
			case 500: instance_create_depth(512,random_range(144,272),0,obj_skeleton_surf_pointing_2hp);break;
		}
		if t = 600 && !instance_exists(obj_skeleton_surf_pointing_1hp)
		&& !instance_exists(obj_skeleton_surf_pointing_2hp) {
			state = 1;
			t = 0;
		}
		#endregion
		break;
	case 1: 
		#region 4 волновых 3 мины
		if t < 550 t++;
		switch(t){
			case 50:  var s = instance_create_depth(512,224,0,obj_skeleton_surf_wave_2hp);s.a = irandom(1);	break;
			case 100: instance_create_depth(512,random_range(144,256),0,obj_boat_mine);break;
			case 175: var s = instance_create_depth(512,224,0,obj_skeleton_surf_wave_2hp);s.a = irandom(1);	break;
			case 250: instance_create_depth(512,random_range(144,256),0,obj_boat_mine);break;
			case 325: var s = instance_create_depth(512,224,0,obj_skeleton_surf_wave_3hp);s.a = irandom(1);	break;
			case 400: instance_create_depth(512,random_range(144,256),0,obj_boat_mine);break;
			case 475: var s = instance_create_depth(512,224,0,obj_skeleton_surf_wave_3hp);s.a = irandom(1);	break;
			case 550:
				if !instance_exists(obj_boat_mine) && !instance_exists(obj_skeleton_surf_2hp) 
				&& !instance_exists(obj_skeleton_surf_3hp) {
					state = 2;
					t = 0;
				}
				break;
		}
		
		#endregion
		break;
	case 2: 
		#region серия камней
		t++;
		switch(t){
			case 100: 
				instance_create_depth(512,208,0,obj_boat_stone15); 
				instance_create_depth(512,240,0,obj_boat_stone15); 
				instance_create_depth(512,272,0,obj_boat_stone15); 
				break;
			case 225: 
				instance_create_depth(512,128,0,obj_boat_stone15); 
				instance_create_depth(512,160,0,obj_boat_stone15); 
				instance_create_depth(512,272,0,obj_boat_stone15); 
				break;
			case 350: 
				instance_create_depth(512,208,0,obj_boat_stone15); 
				instance_create_depth(512,240,0,obj_boat_stone15); 
				instance_create_depth(512,272,0,obj_boat_stone15); 
				break;	
			case 470: 
				instance_create_depth(512,128,0,obj_boat_stone15); 
				instance_create_depth(512,160,0,obj_boat_stone15); 
				instance_create_depth(512,192,0,obj_boat_stone15); 
				break;
			case 600: 
				instance_create_depth(512,208,0,obj_boat_stone15); 
				instance_create_depth(512,240,0,obj_boat_stone15); 
				instance_create_depth(512,272,0,obj_boat_stone15); 
				break;
			case 725: 
				instance_create_depth(512,128,0,obj_boat_stone15); 
				instance_create_depth(512,160,0,obj_boat_stone15); 
				instance_create_depth(512,272,0,obj_boat_stone15); 
				break;
			case 850: 
				instance_create_depth(512,128,0,obj_boat_stone15); 
				instance_create_depth(512,160,0,obj_boat_stone15); 
				instance_create_depth(512,192,0,obj_boat_stone15); 
				break;
			case 975: 
				instance_create_depth(512,208,0,obj_boat_stone15); 
				instance_create_depth(512,240,0,obj_boat_stone15); 
				instance_create_depth(512,272,0,obj_boat_stone15); 
				break;
			case 1100:
				instance_create_depth(512,160,0,obj_powerup_barrel_cannon);
				break;
			case 1300:
				state = 3;
				t = 0;
				break;
		}
		#endregion
		break;
	case 3: 
		#region пушка + 3 волновых + 2 лучника + 4 прямых
		if t < 800 t++;
		switch(t){
			case 50: var s = instance_create_depth(512,224,0,obj_skeleton_surf_wave_2hp);s.a = irandom(1);	break;
			case 75: var s = instance_create_depth(512,224,0,obj_skeleton_surf_wave_2hp);s.a = irandom(1);	break;
			case 100: var s = instance_create_depth(512,224,0,obj_skeleton_surf_wave_2hp);s.a = irandom(1);	break;
			case 125: instance_create_depth(512,random_range(144,272),0,obj_skeleton_surf_archer_pointing);break;
			case 150: instance_create_depth(512,choose(0,48,96,128),depth-10000,obj_boat_boss_vulcano_skeleton_approach);break;
			case 175: instance_create_depth(512,random_range(144,272),0,obj_skeleton_surf_archer_pointing);break;
			case 200: instance_create_depth(512,choose(0,48,96,128),depth-10000,obj_boat_boss_vulcano_skeleton_approach);break;
			case 250: instance_create_depth(512,random_range(144,272),0,obj_skeleton_surf_archer_pointing);break;
			case 300: instance_create_depth(512,224,0,obj_skeleton_surf_1hp);break;
			case 350: instance_create_depth(512,224,0,obj_skeleton_surf_2hp);break;
			case 400: instance_create_depth(512,choose(0,48,96,128),depth-10000,obj_boat_boss_vulcano_skeleton_approach)break;
			case 450: instance_create_depth(512,224,0,obj_skeleton_surf_2hp);break;
			case 500: instance_create_depth(512,224,0,obj_skeleton_surf_1hp);break;
			case 550: instance_create_depth(512,224,0,obj_skeleton_surf_1hp);break;
			case 600: instance_create_depth(512,224,0,obj_skeleton_surf_1hp);break;
			case 700: instance_create_depth(512,224,0,obj_skeleton_surf_1hp);break;
			case 750: instance_create_depth(512,224,0,obj_skeleton_surf_1hp);break;
			case 800:
				if !instance_exists(obj_boat_boss_vulcano_skeleton_approach) 
				&& !instance_exists(obj_skeleton_surf_1hp) && !instance_exists(obj_skeleton_surf_2hp)
				&& !instance_exists(obj_skeleton_surf_wave_2hp) && !instance_exists(obj_skeleton_surf_archer_pointing) 
				&& !instance_exists(obj_skeleton_surf_pointing_2hp)
				{
					state = 4;
					global.boatCheckpoint = 1;
					t = 0;
					break;
				}
		}
		#endregion
		break;
	case 4: 
		#region ЧЕКПОИНТ - преграды + волновыйместо
		if t < 500 t++;
		switch(t){
			case 50: 
					instance_create_depth(512,96+40,0,obj_boat_obstacle_small);
					instance_create_depth(512,176+40,0,obj_boat_obstacle_small);
					break;
			case 100:  var s = instance_create_depth(512,224,0,obj_skeleton_surf_wave_3hp);s.a = irandom(1);break;
			case 200: 
					instance_create_depth(512,96+40,0,obj_boat_obstacle_small);
					instance_create_depth(512,176+40,0,obj_boat_obstacle_small);
					break;
			case 250:  var s = instance_create_depth(512,224,0,obj_skeleton_surf_wave_3hp);s.a = irandom(1);break;
			case 350: 
					instance_create_depth(512,96+40,0,obj_boat_obstacle_small);
					instance_create_depth(512,176+40,0,obj_boat_obstacle_small);
					break;
			case 400:  var s = instance_create_depth(512,224,0,obj_skeleton_surf_wave_3hp);s.a = irandom(1);break;
			case 500:
				if !instance_exists(obj_skeleton_surf_wave_3hp){
					state = 5;
					t = 0;
				}
				break;
		}
		#endregion
		break;
	case 5: 
		#region 3 мины 4 лучника
		if t< 550 t++;
		switch(t){
			case 50: instance_create_depth(512,random_range(144,256),0,obj_boat_mine);break;
			case 150: instance_create_depth(512,random_range(144,272),0,obj_skeleton_surf_archer);break;
			case 250: instance_create_depth(512,random_range(144,256),0,obj_boat_mine);break;
			case 300: instance_create_depth(512,random_range(144,272),0,obj_skeleton_surf_archer);break;
			case 400: instance_create_depth(512,random_range(144,256),0,obj_boat_mine);break;
			case 450: instance_create_depth(512,random_range(144,272),0,obj_skeleton_surf_archer);break;
			case 550:
			if !instance_exists(obj_boat_mine) && !instance_exists(obj_skeleton_surf_archer){
				state = 6;
				t = 0;
				break;
			}
		}
		#endregion
		break;
	case 6: 
		#region серия камней с тиной
		if t < 1900 t++;
		if (t mod 30 = 0) && t<1500 {
			for (var i = 0; i < 10; i++) {
			    instance_create_depth(512,16*i+112,0,obj_boat_algae_fast);
			}	
		}
		
		if t < 1700 && t mod 200 = 0 {
			 instance_create_depth(512,224,0,obj_skeleton_surf_wave_3hp);
		}
		switch(t){
			case 100: 
				instance_create_depth(512,208,0,obj_boat_stone); 
				instance_create_depth(512,240,0,obj_boat_stone); 
				instance_create_depth(512,272,0,obj_boat_stone); 
				break;	
			case 300: 
				instance_create_depth(512,128,0,obj_boat_stone); 
				instance_create_depth(512,160,0,obj_boat_stone); 
				instance_create_depth(512,192,0,obj_boat_stone); 
				break;	
			case 500:
				instance_create_depth(512,128,0,obj_boat_stone); 
				instance_create_depth(512,160,0,obj_boat_stone); 
				instance_create_depth(512,272,0,obj_boat_stone); 
				break;
			case 700: 
				instance_create_depth(512,208,0,obj_boat_stone); 
				instance_create_depth(512,240,0,obj_boat_stone); 
				instance_create_depth(512,272,0,obj_boat_stone); 
				break;	
			case 900: 
				instance_create_depth(512,128,0,obj_boat_stone); 
				instance_create_depth(512,160,0,obj_boat_stone); 
				instance_create_depth(512,272,0,obj_boat_stone); 
				break;	
			case 1100:
				instance_create_depth(512,208,0,obj_boat_stone); 
				instance_create_depth(512,240,0,obj_boat_stone); 
				instance_create_depth(512,272,0,obj_boat_stone); 
				break;
			case 1300: 
				instance_create_depth(512,128,0,obj_boat_stone); 
				instance_create_depth(512,160,0,obj_boat_stone); 
				instance_create_depth(512,192,0,obj_boat_stone); 
				break;	
			case 1500: 
				instance_create_depth(512,128,0,obj_boat_stone); 
				instance_create_depth(512,240,0,obj_boat_stone); 
				instance_create_depth(512,272,0,obj_boat_stone); 
				break;	

			case 1900:
			if !instance_exists(obj_skeleton_surf_wave_3hp){
					t = 0;
				state = 7;
			}
				
				break;
				
		}
		#endregion
		break;
	case 7: 
		#region 4 мины 4 спрыгивающих
		if t < 800 t++;
		switch(t){
			case 50: instance_create_depth(512,choose(0,48,96,128),depth-10000,obj_boat_boss_vulcano_skeleton_approach);break;
			case 100: instance_create_depth(512,random_range(144,256),0,obj_boat_mine);break;
			case 200: instance_create_depth(512,choose(0,48,96,128),depth-10000,obj_boat_boss_vulcano_skeleton_approach);break;
			case 300: instance_create_depth(512,random_range(144,256),0,obj_boat_mine);break;
			case 400: instance_create_depth(512,choose(0,48,96,128),depth-10000,obj_boat_boss_vulcano_skeleton_approach);break;
			case 500: instance_create_depth(512,random_range(144,256),0,obj_boat_mine);break;
			case 600: instance_create_depth(512,choose(0,48,96,128),depth-10000,obj_boat_boss_vulcano_skeleton_approach);break;
			case 700: instance_create_depth(512,random_range(144,256),0,obj_boat_mine);break;
			case 800:
				if !instance_exists(obj_boat_mine) && !instance_exists(obj_skeleton_surf_pointing_2hp){
					state = 8;
					t = 0;
					global.boatCheckpoint = 2;
				}
				break;
		}
		#endregion
		break;
	case 8: 
		#region ЧЕКПОИНТ 4 волновые + 2 лучники прямо
		if t < 550 t++;
		switch(t){
			case 50: var s = instance_create_depth(512,224,0,obj_skeleton_surf_wave_3hp);s.a = irandom(1);break;
			case 100: var s = instance_create_depth(512,224,0,obj_skeleton_surf_wave_2hp);s.a = irandom(1);break;
			case 200: instance_create_depth(512,random_range(144,272),0,obj_skeleton_surf_archer);break;
			case 250: var s = instance_create_depth(512,224,0,obj_skeleton_surf_wave_3hp);s.a = irandom(1);break;
			case 400: instance_create_depth(512,random_range(144,272),0,obj_skeleton_surf_archer_pointing);break;
			case 450: var s = instance_create_depth(512,224,0,obj_skeleton_surf_wave_3hp);s.a = irandom(1);break;
			case 550:
				if !instance_exists(obj_skeleton_surf_archer_pointing) 
				&& !instance_exists(obj_skeleton_surf_wave_3hp)
				&& !instance_exists(obj_skeleton_surf_wave_2hp){
					t= 0 ;
					state = 9;
				}
				break;		
		}
		#endregion
		break;
	case 9: 
		#region 2 направленых 2 волновых 2 лучника
		if t < 450 t++;
		switch(t){
			case 50: var s = instance_create_depth(512,224,0,obj_skeleton_surf_wave_3hp);s.a = irandom(1);break;
			case 150: instance_create_depth(512,224,0,obj_skeleton_surf_pointing_2hp);break;
			case 250: var s = instance_create_depth(512,224,0,obj_skeleton_surf_wave_3hp);s.a = irandom(1);break;
			case 350: instance_create_depth(512,224,0,obj_skeleton_surf_pointing_3hp);break;
			case 450:
				if !instance_exists(obj_skeleton_surf_wave_3hp)
				&& !instance_exists(obj_skeleton_surf_pointing_2hp)
				&& !instance_exists(obj_skeleton_surf_pointing_3hp) {
					state = 10;
					t = 0;
				}
				break;
		}
		#endregion
		break;
	case 10: 
		#region длинная серия с камнями и стенами
		t++;
		switch(t){
			case 50:		
				instance_create_depth(512,192,0,obj_boat_stone15);
				instance_create_depth(512,224,0,obj_boat_stone15);
				instance_create_depth(512,256,0,obj_boat_stone15);
				break;
			case 80:		
				instance_create_depth(512,192,0,obj_boat_stone15);
				instance_create_depth(512,224,0,obj_boat_stone15);
				instance_create_depth(512,256,0,obj_boat_stone15);
				break;
			case 110:		
				instance_create_depth(512,192,0,obj_boat_stone15);
				instance_create_depth(512,224,0,obj_boat_stone15);
				instance_create_depth(512,256,0,obj_boat_stone15);
				break;
			case 140:		
				instance_create_depth(512,192,0,obj_boat_stone15);
				instance_create_depth(512,224,0,obj_boat_stone15);
				instance_create_depth(512,256,0,obj_boat_stone15);
				break;
			case 170:		
				instance_create_depth(512,192,0,obj_boat_stone15);
				instance_create_depth(512,224,0,obj_boat_stone15);
				instance_create_depth(512,256,0,obj_boat_stone15);
				break;
			case 200:
				instance_create_depth(512,224,0,obj_boat_stone15);
				instance_create_depth(512,256,0,obj_boat_stone15);
				break;
			case 230:
				instance_create_depth(512,224,0,obj_boat_stone15);
				instance_create_depth(512,256,0,obj_boat_stone15);
				break;
			case 260:
				instance_create_depth(512,256,0,obj_boat_stone15);
				break;
			case 290:
				instance_create_depth(512,256,0,obj_boat_stone15);
				break;
			case 320:
				instance_create_depth(512,128,0,obj_boat_stone15); //1
				break;
			case 350:
				instance_create_depth(512,128,0,obj_boat_stone15); //1
				break;
			case 380:
				instance_create_depth(512,128,0,obj_boat_stone15); //1
				instance_create_depth(512,160,0,obj_boat_stone15); //2
				break;
			case 410:
				instance_create_depth(512,128,0,obj_boat_stone15); //1
				instance_create_depth(512,160,0,obj_boat_stone15); //2
				break;
			case 440:
				instance_create_depth(512,128,0,obj_boat_stone15); //1
				instance_create_depth(512,160,0,obj_boat_stone15); //2
				instance_create_depth(512,192,0,obj_boat_stone15); //3
				break;
			case 470:
				instance_create_depth(512,128,0,obj_boat_stone15); //1
				instance_create_depth(512,160,0,obj_boat_stone15); //2
				instance_create_depth(512,192,0,obj_boat_stone15); //3
				var o = instance_create_depth(512,192+40,0,obj_boat_obstacle_small); //3
				o.hspd = -1.5;
				break;
			case 500:
				instance_create_depth(512,128,0,obj_boat_stone15); //1
				instance_create_depth(512,160,0,obj_boat_stone15); //2
				instance_create_depth(512,192,0,obj_boat_stone15); //3
				var o = instance_create_depth(512,192+40,0,obj_boat_obstacle_small); //3
				o.hspd = -1.5;
				break;
			case 530:
				instance_create_depth(512,128,0,obj_boat_stone15); //1
				instance_create_depth(512,160,0,obj_boat_stone15); //2
				instance_create_depth(512,192,0,obj_boat_stone15); //3
				break;
			case 560:
				instance_create_depth(512,128,0,obj_boat_stone15); //1
				instance_create_depth(512,160,0,obj_boat_stone15); //2
				instance_create_depth(512,192,0,obj_boat_stone15); //3
				var o = instance_create_depth(512,192+40,0,obj_boat_obstacle_small); //3
				o.hspd = -1.5;
				break;
			case 590:
				instance_create_depth(512,128,0,obj_boat_stone15); //1
				instance_create_depth(512,160,0,obj_boat_stone15); //2
				
				break;
			case 620:
				instance_create_depth(512,128,0,obj_boat_stone15); //1
				instance_create_depth(512,160,0,obj_boat_stone15); //2
				break;
			case 650:
				instance_create_depth(512,128,0,obj_boat_stone15); //1
				break;
			case 680:
				instance_create_depth(512,128,0,obj_boat_stone15); //1
				break;
			case 710:
				instance_create_depth(512,128,0,obj_boat_stone15); //1
				instance_create_depth(512,256,0,obj_boat_stone15); //5
				break;
			case 740:
				instance_create_depth(512,128,0,obj_boat_stone15); //1
				instance_create_depth(512,256,0,obj_boat_stone15); //5
				break;
			case 770:
				instance_create_depth(512,128,0,obj_boat_stone15); //1
				instance_create_depth(512,256,0,obj_boat_stone15); //5
				var o = instance_create_depth(512,144+40,0,obj_boat_obstacle_small); //3
				o.hspd = -1.5;
				break;
			case 800:
				instance_create_depth(512,128,0,obj_boat_stone15); //1
				instance_create_depth(512,256,0,obj_boat_stone15); //5
				var o = instance_create_depth(512,144+40,0,obj_boat_obstacle_small); //3
				o.hspd = -1.5;
				break;
			case 830:
				instance_create_depth(512,128,0,obj_boat_stone15); //1
				instance_create_depth(512,256,0,obj_boat_stone15); //5
				break;
			case 860:
				instance_create_depth(512,128,0,obj_boat_stone15); //1
				instance_create_depth(512,256,0,obj_boat_stone15); //5
				break;
			case 890:
				instance_create_depth(512,256,0,obj_boat_stone15); //5
				break;
			case 920:
				instance_create_depth(512,224,0,obj_boat_stone15); //4
				instance_create_depth(512,256,0,obj_boat_stone15); //5
				break;
			case 950:
				instance_create_depth(512,224,0,obj_boat_stone15); //4
				instance_create_depth(512,256,0,obj_boat_stone15); //5
				break;
			case 980:
				instance_create_depth(512,224,0,obj_boat_stone15); //4
				instance_create_depth(512,256,0,obj_boat_stone15); //5
				var o = instance_create_depth(512,112+40,0,obj_boat_obstacle_small); //3
				o.hspd = -1.5;
				break;
			case 1010:
				instance_create_depth(512,224,0,obj_boat_stone15); //4
				instance_create_depth(512,256,0,obj_boat_stone15); //5
				var o = instance_create_depth(512,112+40,0,obj_boat_obstacle_small); //3
				o.hspd = -1.5;
				break;
			case 1040:
				instance_create_depth(512,224,0,obj_boat_stone15); //4
				instance_create_depth(512,256,0,obj_boat_stone15); //5
				var o = instance_create_depth(512,112+40,0,obj_boat_obstacle_small); //3
				o.hspd = -1.5;
				break;
			case 1070:
				instance_create_depth(512,224,0,obj_boat_stone15); //4
				instance_create_depth(512,256,0,obj_boat_stone15); //5
				break;
			case 1100:
				instance_create_depth(512,256,0,obj_boat_stone15); //5
				break;
			case 1130:
				instance_create_depth(512,256,0,obj_boat_stone15); //5
				break;
			case 1160:
				instance_create_depth(512,128,0,obj_boat_stone15); //1
				break;
			case 1190:
				instance_create_depth(512,128,0,obj_boat_stone15); //1
				break;
			case 1220:
				instance_create_depth(512,128,0,obj_boat_stone15); //1
				instance_create_depth(512,160,0,obj_boat_stone15); //2
				break;
			case 1250:
				instance_create_depth(512,128,0,obj_boat_stone15); //1
				instance_create_depth(512,160,0,obj_boat_stone15); //2
				break;
			case 1280:
				instance_create_depth(512,128,0,obj_boat_stone15); //1
				instance_create_depth(512,160,0,obj_boat_stone15); //2
				instance_create_depth(512,192,0,obj_boat_stone15); //3
				break;
			case 1310:
				instance_create_depth(512,128,0,obj_boat_stone15); //1
				instance_create_depth(512,160,0,obj_boat_stone15); //2
				instance_create_depth(512,192,0,obj_boat_stone15); //3
				break;
			case 1340:
				instance_create_depth(512,128,0,obj_boat_stone15); //1
				instance_create_depth(512,160,0,obj_boat_stone15); //2
				instance_create_depth(512,192,0,obj_boat_stone15); //3
				var o = instance_create_depth(512,192+40,0,obj_boat_obstacle_small); //3
				o.hspd = -1.5;
				break;
			case 1370:
				instance_create_depth(512,128,0,obj_boat_stone15); //1
				instance_create_depth(512,160,0,obj_boat_stone15); //2
				instance_create_depth(512,192,0,obj_boat_stone15); //3
				break;
			case 1400:
				instance_create_depth(512,128,0,obj_boat_stone15); //1
				instance_create_depth(512,160,0,obj_boat_stone15); //2
				instance_create_depth(512,192,0,obj_boat_stone15); //3
				break;
			case 1490:
				var o = instance_create_depth(512,112+80,0,obj_boat_obstacle_big);
				o.hspd = -1.5;
				break;
			case 1550:
				instance_create_depth(512,192,0,obj_boat_stone15); //3
				instance_create_depth(512,224,0,obj_boat_stone15); //4
				instance_create_depth(512,256,0,obj_boat_stone15); //5
				break;
			case 1580:
				instance_create_depth(512,192,0,obj_boat_stone15); //3
				instance_create_depth(512,224,0,obj_boat_stone15); //4
				instance_create_depth(512,256,0,obj_boat_stone15); //5
				break;
			case 1610:
				instance_create_depth(512,192,0,obj_boat_stone15); //3
				instance_create_depth(512,224,0,obj_boat_stone15); //4
				instance_create_depth(512,256,0,obj_boat_stone15); //5
				break;
			case 1700:
				var o = instance_create_depth(512,112+80,0,obj_boat_obstacle_big);
				o.hspd = -1.5;
				break;
			case 1790:
				instance_create_depth(512,128,0,obj_boat_stone15); //1
				instance_create_depth(512,160,0,obj_boat_stone15); //2
				instance_create_depth(512,192,0,obj_boat_stone15); //3
				break;
			case 1820:
				instance_create_depth(512,128,0,obj_boat_stone15); //1
				instance_create_depth(512,160,0,obj_boat_stone15); //2
				instance_create_depth(512,192,0,obj_boat_stone15); //3
				break;
			case 1850:
				instance_create_depth(512,128,0,obj_boat_stone15); //1
				instance_create_depth(512,160,0,obj_boat_stone15); //2
				instance_create_depth(512,192,0,obj_boat_stone15); //3
				break;
			case 2250:
				state = 16.5;
				t = 0;
				
					
		}
		#endregion
		break;
}




#region 16.5 Перед концом

if state = 16.5
{
    t++;
    if t = 150
    {
        t = 0;
        state = 17;
        obj_Player_boat.canControl = 0;
        obj_Player_boat.state = 10;
    }
}

#endregion

#region 17 - Скорость задников

layer_hspeed(l_water,sp_wat);
layer_hspeed(l_farwater,sp_farwat);
layer_hspeed(l_toofarwater,sp_toofarwat);
layer_hspeed(l_Skies,sp_skies);


if state = 17
{
    if t < 300
    {
        t++;
    }
    
    if t > 200
    {
        sp_wat = lerp(sp_wat,-0.5,0.02);
        sp_farwat = lerp(sp_farwat,-0.25,0.02);
        sp_toofarwat = lerp(sp_toofarwat,-0.1,0.02);
        sp_skies = lerp(sp_skies,0,0.02);
    }
    
    
    if t = 299
    {
        instance_create_depth(0,0,-1000000,obj_boat_menu_end_s2);   
    }
    
 
}

#endregion