/// @description Insert description here
// You can write your code in this editor

/* STATES /////////////

1 - начало

Летуч мыши
Быстрозмеи
Лавамон
Бронир Скелет

1.1 - // Летучмыши, 2 лава монстр
1.2 - // 3 быстро змеи сверху, 2 лавамон, 
1.3 - // Бронир Скелет + 3 летуч мыши
1.4 - // 2 лавамон + 2 скелета + 2 ыстрозмеи сверху
1.5 - // получение сундука
1.51 -// Разбивка сундук
1.6 - // разрушение блоков под землей

2.1 - Босс 1 - 2 и 3 фазы
2.2 - получение сундука

3.1 - Босс 2 - 2 и 3 фазы
3.2 - получение монеты

*/

#region 1 ФАЗА

if state = 1
{   
    t++;
    if t = 100
    {
        state = 1.1;
        t = 0;
    }
}

if state = 1.1 // Летучмыши, 2 лава монстр
{
    if t < 450 t++; 
    switch(t)
    {
        case 50: 
            if obj_Player.x> room_width/2 {
				var bat = instance_create_depth(-80,176,-1,obj_bat);
				bat.state =1;
				bat.sprite_index = spr_bat_fly;
			} else {
				var bat = instance_create_depth(560,192,-1,obj_bat);
				bat.state =1;	
				bat.sprite_index = spr_bat_fly;
			}
			break;
		case 90: 
			if obj_Player.x> room_width/2 {
				var bat = instance_create_depth(-64,224,-1,obj_bat);
				bat.state =1;
				bat.sprite_index = spr_bat_fly;
			} else {
				var bat = instance_create_depth(528,144,-1,obj_bat);
				bat.state =1;	
				bat.sprite_index = spr_bat_fly;
			}
			break;
		case 130:
			if obj_Player.x> room_width/2 {
				var bat = instance_create_depth(-48,144,-1,obj_bat);
				bat.state =1;
				bat.sprite_index = spr_bat_fly;
			} else {
				var bat = instance_create_depth(528,224,-1,obj_bat);
				bat.state =1;	
				bat.sprite_index = spr_bat_fly;
			}
			break;
		case 250:
			if obj_Player.x > room_width/2 {
				var lavast = instance_create_depth(128,256,-1,obj_lavaster)
				lavast.state = 1;
			} else {
				var lavast = instance_create_depth(352,256,-1,obj_lavaster)
				lavast.state = 1;	
			}
			break;
		case 350:
			if obj_Player.x > room_width/2 {
				var lavast = instance_create_depth(96,256,0,obj_lavaster)
				lavast.state = 1;
			} else {
				var lavast = instance_create_depth(400,256,0,obj_lavaster)
				lavast.state = 1;	
			}
			break;
		case 450:  
		if !instance_exists(obj_lavaster) 
		&& !instance_exists(obj_bat)
		{
            state = 1.2;
            t = 0;
		}
            break;
    }   
}

if state = 1.2 // 3 быстро змеи сверху, 2 лавамон, 
{
	if t < 400 t++;
	switch(t)
	{
		case 50:
			if obj_Player.x > room_width/2 {
				var sn = instance_create_depth(48,80,0,obj_molded_big_spawner_n)	
				sn.obj_cr = obj_fastsnake;
				sn.y_cr = 16;
			} else {
				var sn = instance_create_depth(432,80,0,obj_molded_big_spawner_n)	
				sn.obj_cr = obj_fastsnake_l
				sn.y_cr = 16;
			}
			break;
		case 150:
			if obj_Player.x > room_width/2 {
				var sn = instance_create_depth(48,80,0,obj_molded_big_spawner_n)	
				sn.obj_cr = obj_fastsnake;
				sn.y_cr = 16;
			} else {
				var sn = instance_create_depth(432,80,0,obj_molded_big_spawner_n)	
				sn.obj_cr = obj_fastsnake_l
				sn.y_cr = 16;
			}
			break;
		case 200:
			if obj_Player.x > room_width/2 {
				var lavast = instance_create_depth(96,256,0,obj_lavaster)
				lavast.state = 1;
			} else {
				var lavast = instance_create_depth(400,256,0,obj_lavaster)
				lavast.state = 1;	
			}
			break;
		case 250:
			if obj_Player.x > room_width/2 {
				var sn = instance_create_depth(48,80,0,obj_molded_big_spawner_n)	
				sn.obj_cr = obj_fastsnake;
				sn.y_cr = 16;
			} else {
				var sn = instance_create_depth(432,80,0,obj_molded_big_spawner_n)	
				sn.obj_cr = obj_fastsnake_l
				sn.y_cr = 16;
			}
			break;
		case 300:
			if obj_Player.x > room_width/2 {
				var lavast = instance_create_depth(128,256,0,obj_lavaster)
				lavast.state = 1;
			} else {
				var lavast = instance_create_depth(352,256,0,obj_lavaster)
				lavast.state = 1;	
			}
			break;
		case 400:
			if !instance_exists(obj_lavaster)
			&& !instance_exists(obj_fastsnake)
			&& !instance_exists(obj_fastsnake_l)
			{
				t = 0;
				state = 1.3;
			}
			break;
	}
}

if state = 1.3 // Бронир Скелет + 3 летуч мыши
{
	if t < 250 t++;
	switch(t)
	{
		case 50:
			if obj_Player.x> room_width/2 {
				var bat = instance_create_depth(-80,176,-1,obj_bat);
				bat.state =1;
				bat.sprite_index = spr_bat_fly;
			} else {
				var bat = instance_create_depth(560,192,-1,obj_bat);
				bat.state =1;	
				bat.sprite_index = spr_bat_fly;
			}
			break;
			case 90:
			if obj_Player.x > room_width/2 {
				var skeleton = instance_create_depth(96,208,-2,obj_molded_big_spawner_n);
				skeleton.obj_cr = obj_armor_skel;
				skeleton.y_cr = 16;
			} else {
				var skeleton = instance_create_depth(384,208,-2,obj_molded_big_spawner_n);
				skeleton.obj_cr = obj_armor_skel;
				skeleton.y_cr = 16;
			}
				break;
			case 150:
				if obj_Player.x> room_width/2 {
				var bat = instance_create_depth(-80,176,-1,obj_bat);
				bat.state =1;
				bat.sprite_index = spr_bat_fly;
				} else {
					var bat = instance_create_depth(560,192,-1,obj_bat);
					bat.state =1;	
					bat.sprite_index = spr_bat_fly;
				}
				break;
			case 250:
				if !instance_exists(obj_bat) 
				&& !instance_exists(obj_armor_skel)
				{
					t = 0;
					state = 1.4;
				}
				break;
	}
}

if state = 1.4  // 2 лавамон + 2 скелета + 2 ыстрозмеи сверху
{
	if t < 750 t++;
	switch(t)
	{
		case 50: //лавамон
			if obj_Player.x > room_width/2 {
				var lavast = instance_create_depth(96,256,0,obj_lavaster)
				lavast.state = 1;
			} else {
				var lavast = instance_create_depth(400,256,0,obj_lavaster)
				lavast.state = 1;	
			}
			break;
		case 150: // скелет
			if obj_Player.x > room_width/2 {
				var skeleton = instance_create_depth(96,208,-2,obj_molded_big_spawner_n);
				skeleton.obj_cr = obj_armor_skel;
				skeleton.y_cr = 16;
			} else {
				var skeleton = instance_create_depth(384,208,-2,obj_molded_big_spawner_n);
				skeleton.obj_cr = obj_armor_skel;
				skeleton.y_cr = 16;
			}
			break;
		case 200: // лавамон
			if obj_Player.x > room_width/2 {
				var lavast = instance_create_depth(96,256,0,obj_lavaster)
				lavast.state = 1;
			} else {
				var lavast = instance_create_depth(400,256,0,obj_lavaster)
				lavast.state = 1;	
			}
			break;
		case 450: // скелет
			if obj_Player.x > room_width/2 {
				var skeleton = instance_create_depth(112,208,-2,obj_molded_big_spawner_n);
				skeleton.obj_cr = obj_armor_skel;
				skeleton.y_cr = 16;
			} else {
				var skeleton = instance_create_depth(400,208,-2,obj_molded_big_spawner_n);
				skeleton.obj_cr = obj_armor_skel;
				skeleton.y_cr = 16;
			}
			break; 
		case 550: // змея
			if obj_Player.x > room_width/2 {
				var sn = instance_create_depth(48,80,0,obj_molded_big_spawner_n)	
				sn.obj_cr = obj_fastsnake;
				sn.y_cr = 16;
			} else {
				var sn = instance_create_depth(432,80,0,obj_molded_big_spawner_n)	
				sn.obj_cr = obj_fastsnake_l
				sn.y_cr = 16;
			}
			break;
		case 650: // змея
			if obj_Player.x > room_width/2 {
				var sn = instance_create_depth(48,80,0,obj_molded_big_spawner_n)	
				sn.obj_cr = obj_fastsnake;
				sn.y_cr = 16;
			} else {
				var sn = instance_create_depth(432,80,0,obj_molded_big_spawner_n)	
				sn.obj_cr = obj_fastsnake_l
				sn.y_cr = 16;
			}
			break;
		case 750:
			if !instance_exists(obj_fastsnake)
			&& !instance_exists(obj_fastsnake_l)
			&& !instance_exists(obj_armor_skel)
			&& !instance_exists(obj_lavaster) 
			{
				state = 1.5;
				t = 0;
			}			
			break;
	}
}

if state = 1.5 // получение сундука
{
    if t < 22 t++;
    if t = 20 {
		obj_lava_endurance.state = 1; 	
	}
}

if state = 1.51 
{
	if t < 80 t++;
    if t = 78 instance_create_depth(48,256,1,obj_chest_le_1);	
}

if state = 1.52 // Разбивка сундук
{
    t++;
    if t = 100
    {
        t = 0;
        state = 1.6;
    }
}

if state = 1.6 // Ожидание перед боссом 1
{
    t++;
    if t = 100 
    {
		
		
        var b1 = instance_create_depth(240,144,-2,obj_molded_big_spawner_n);
		b1.obj_cr = obj_boss_le1_2_appear;		
		
        state = 2
        t = 0;       
    }
}

#endregion

#region 2 ФАЗА

if state = 2.1
{
    if t < 22 t++;
    if t = 20 instance_create_depth(320,256,1,obj_chest_le_2);
}

if state = 2.3 // Ожидание перед 2 боссом
{
    t++
    
    if t = 100
    {
        state = 3.1;
        t = 0;
    }
}
#endregion

#region 3 ФАЗА

if state = 3.1
{
    if t < 3 t++;
    if t = 1
    {
        instance_create_depth(240,96,0,obj_boss_le2_phase2);
    }
}

if state = 3.2
{
    t++;
    if t = 20
    {
        fnc_msc_stop_play()
        if global.secrets_l_endurance = 0
        {
            instance_create_depth(240,256,0,obj_chest_le_3_s);   
        } else instance_create_depth(240,256,0,obj_chest_le_3);  
        instance_destroy();
    }
    
}
#endregion