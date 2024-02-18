/// @description Insert description here
// You can write your code in this editor

/* STATES /////////////

1 - начало

1.1 - // Горизонтальные птицы, летящие в игрока по количеству
1.2 - // Горизонтальные стреляющие и 2 ежа
1.3 - // Вертикальные стреляющие. Волновые, ящерица, еж 2
1.4 - // Волновые птицы, 2 растения, 2 ежа, 1 ящерица
1.5 - // получение сундука
1.51 -// Разбивка сундук
1.6 - // разрушение блоков под землей

2.1 - Босс 1 - 2 и 3 фазы
2.2 - получение сундука

3.1 - Босс 2 - 2 и 3 фазы
3.2 - получение монеты


Оборотень Спрут Абоминация Зомби
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

if state = 1.1 // 4 Зомби Абоминация
{
    if t < 550 t++; 
    switch(t)
    {
        case 50: 
            if obj_Player.x>room_width/2 
			{
				instance_create_depth(64,256,50,obj_zombie_start)	
				instance_create_depth(144,256,50,obj_zombie_start)	
			} else 
			{
				instance_create_depth(336,256,50,obj_zombie_start)	
				instance_create_depth(416,256,50,obj_zombie_start)	
			}	
			break;
        case 200: instance_create_depth(obj_Player.x,256,50,obj_zombie_start);break;
        case 250: instance_create_depth(obj_Player.x,256,50,obj_zombie_start);break;
        case 300: instance_create_depth(obj_Player.x,256,50,obj_zombie_start);break;
        case 350: instance_create_depth(obj_Player.x,256,50,obj_zombie_start);break;
			
		case 450:
			if obj_Player.x>room_width/2 
			{
				var e1 = instance_create_depth(80,240,50,obj_molded_big_spawner_n)	
				e1.obj_cr = obj_abomination;
				e1.y_cr = 16;
			} else 
			{
				var e1 = instance_create_depth(416,240,50,obj_molded_big_spawner_n)	
				e1.obj_cr = obj_abomination;
				e1.y_cr = 16;
			}	
            break;
        case 550:   
		if !instance_exists(obj_zombie) 
		&& !instance_exists(obj_zombie_start)
		&& !instance_exists(obj_abomination)
		&& !instance_exists(obj_abomination_larva)
		{
            state = 1.2;
            t = 0;
		}
            break;
    }   
}

if state = 1.2 // Спрут Абоминация Абоминация  
{
   if t < 500 t++;
   switch(t)
   {	
	   case 50:
		if obj_Player.x>room_width/2 {
			var e1 = instance_create_depth(80,240,50,obj_molded_big_spawner_n)
			e1.obj_cr = obj_evilsprout
			e1.y_cr = 16;
		} else {
			var e1 = instance_create_depth(400,240,50,obj_molded_big_spawner_n)
			e1.obj_cr = obj_evilsprout
			e1.y_cr = 16;	
		}
		break;
		case 200:
			if obj_Player.x>room_width/2 {
			var e1 = instance_create_depth(144,240,50,obj_molded_big_spawner_n)
			e1.obj_cr = obj_abomination
			e1.y_cr = 16;
		} else {
			var e1 = instance_create_depth(352,240,50,obj_molded_big_spawner_n)
			e1.obj_cr = obj_abomination
			e1.y_cr = 16;	
		}
			break;
		case 400:
			if obj_Player.x>room_width/2 {
			var e1 = instance_create_depth(128,240,50,obj_molded_big_spawner_n)
			e1.obj_cr = obj_abomination
			e1.y_cr = 16;
		} else {
			var e1 = instance_create_depth(368,240,50,obj_molded_big_spawner_n)
			e1.obj_cr = obj_abomination
			e1.y_cr = 16;	
		}
			break;
		case 500:
			if !instance_exists(obj_evilsprout)
			&& !instance_exists(obj_abomination)
			&& !instance_exists(obj_abomination_larva)
			{
				t = 0;
				state = 1.3;
			}
			
			break;
		
   }
}

if state = 1.3 // Оборотень 3 зомби ОБоротень
{
    if t < 500 t++;
    switch(t)
	{
		case 50:
		if obj_Player.x>room_width/2 {
			var e2 = instance_create_depth(96,240,50,obj_molded_big_spawner_n)	
			e2.obj_cr = obj_werewolf;
			e2.y_cr = 16;
		} else {
			var e2 = instance_create_depth(384,240,50,obj_molded_big_spawner_n)	
			e2.obj_cr = obj_werewolf;
			e2.y_cr = 16;
		}	
			break;
		case 150: instance_create_depth(obj_Player.x,256,50,obj_zombie_start);break;
		case 200: instance_create_depth(obj_Player.x,256,50,obj_zombie_start);break;
		case 220: instance_create_depth(obj_Player.x,256,50,obj_zombie_start);break;
		case 400:		
		if obj_Player.x>room_width/2 {
			var e2 = instance_create_depth(80,240,50,obj_molded_big_spawner_n)	
			e2.obj_cr = obj_werewolf;
			e2.y_cr = 16;
		} else {
			var e2 = instance_create_depth(400,240,50,obj_molded_big_spawner_n)	
			e2.obj_cr = obj_werewolf;
			e2.y_cr = 16;
		}	
		break;
		case 500:
		if !instance_exists(obj_werewolf)
		&& !instance_exists(obj_werewolf_mad)
		&& !instance_exists(obj_zombie)
		&& !instance_exists(obj_zombie_start)
		{
			t= 0;
			state = 1.4; 
		}
			break;		
	}  
}

if state = 1.4 // 2 зомби + абоминация Оборотень + спрут 2 зомби + Оборотень
{
    if t < 750 t++;
	switch(t)
	{
		case 50:
			instance_create_depth(96,256,50,obj_zombie_start);
			instance_create_depth(224,256,50,obj_zombie_start);
			instance_create_depth(368,256,50,obj_zombie_start);
			if obj_Player.x > room_width/2{
				var e1 = instance_create_depth(112,240,50,obj_molded_big_spawner_n);
				e1.obj_cr = obj_abomination;
				e1.y_cr = 16;
			} else {
				var e1 = instance_create_depth(368,240,50,obj_molded_big_spawner_n);
				e1.obj_cr = obj_abomination;
				e1.y_cr = 16;	
			}			
			break;
		case 250:
			if obj_Player.x> room_width/2{
				var e1 = instance_create_depth(64,240,50,obj_molded_big_spawner)	
				var e2 = instance_create_depth(112,240,50,obj_molded_big_spawner)
				e1.obj_cr = obj_werewolf;
				e2.obj_cr = obj_evilsprout;
				e1.y_cr = 16;
				e2.y_cr = 16;
			} else {
				var e1 = instance_create_depth(416,240,50,obj_molded_big_spawner)	
				var e2 = instance_create_depth(352,240,50,obj_molded_big_spawner)
				e1.obj_cr = obj_werewolf;
				e2.obj_cr = obj_evilsprout;
				e1.y_cr = 16;
				e2.y_cr = 16;	
			}
			break;
		case 650:
			instance_create_depth(96,256,50,obj_zombie_start);			
			instance_create_depth(368,256,50,obj_zombie_start);
			if obj_Player.x > room_width/2{
				var e1 = instance_create_depth(112,240,50,obj_molded_big_spawner_n);
				e1.obj_cr = obj_werewolf;
				e1.y_cr = 16;
			} else {
				var e1 = instance_create_depth(368,416,50,obj_molded_big_spawner_n);
				e1.obj_cr = obj_werewolf;
				e1.y_cr = 16;	
			}
			break;
		case 750:
			if !instance_exists(obj_werewolf)
			&& !instance_exists(obj_werewolf_mad)
			&& !instance_exists(obj_abomination)
			&& !instance_exists(obj_zombie)
			&& !instance_exists(obj_zombie_start)
			&& !instance_exists(obj_evilsprout)
			&& !instance_exists(obj_abomination_larva){
				state = 1.5;
				t = 0;
			}
			break;
	}	
}

if state = 1.5 // получение сундука
{
    if t < 22 t++;
    if t = 20 instance_create_depth(48,256,80,obj_chest_ge_1);
}

if state = 1.51 // Разбивка сундук
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
        instance_create_depth(0,0,0,obj_boss_ge2_controller)
        state = 2
        t = 0;       
    }
}

#endregion

#region 2 ФАЗА

if state = 2.1
{
    if t < 22 t++;
    if t = 20 instance_create_depth(320,256,80,obj_chest_ge_2);
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
        instance_create_depth(-64,64,50,obj_boss_ge1_phase2);
    }
}

if state = 3.2
{
    t++;
    if t = 20
    {
        if global.secrets_g_endurance = 0
        {
            instance_create_depth(240,256,80,obj_chest_ge_3_s);   
        } else instance_create_depth(240,256,80,obj_chest_ge_3);  
        instance_destroy();
    }
    
}
#endregion