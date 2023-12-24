/// @description Insert description here
// You can write your code in this editor

/*
	place_rand
	0 - 96 96
	1 - 64 176 
	2 - 384 96
	3 - 448 176
	
	слева 32 80
	справа 432 80
	
	посередине 240 64
*/
#region anim
t_sparkle++;
if instance_exists(obj_bossmerch_phase3_mask) && image_alpha > 0 image_alpha -=0.2; 
if !instance_exists(obj_bossmerch_phase3_mask) && image_alpha < 1 image_alpha +=0.2; 

if t_sparkle = 10 {
    t_sparkle = 0;
    instance_create_depth(x,y,depth+1,obj_sfx_sparkle_lastboss,{image_alpha : image_alpha});
}
#endregion


switch(place_rand){
	case 0:
		target_x = 96;
		target_y = 96;
		break;
	case 1:
		target_x = 64;
		target_y = 176;
		break;
	case 2:
		target_x = 384;
		target_y = 96;
		break;
	case 3:
		target_x = 416;
		target_y = 176;
		break;
}


switch(state){
	case 1:
		#region переход 1 раз с обычной атакой 
		t++;
		if t = 29 {do {place_rand = irandom(3);} until (place_rand!=old_place) }
		if t > 30 {
			old_place = place_rand;
			if point_distance(x, y, target_x, target_y) > 2
			{
			    move_towards_point(target_x, target_y, 2);
			}
			else {
				state = 1.1;	
				speed = 0;	
				t = 0;
			}
		}
		#endregion
		break;
	case 1.1:
		#region обычная атака
		if t < 21 t++;
		if t = 20{
            fnc_snd_play_onetime(snd_di_boss_appear)
			var i = instance_create_depth(x,y,depth,obj_bossmerch_phase3_mask);
			i.fol = id;
			i.enemy_hp = enemy_hp;
			i.next_state = 2;
		}
		#endregion
		break;
	case 2:
		#region переход 2 раз с обычной атакой 
		t++;
		if t = 29 {do {place_rand = irandom(3);} until (place_rand!=old_place) }
		
		if t > 30 {
			old_place = place_rand;
			if point_distance(x, y, target_x, target_y) > 2
			{
			    move_towards_point(target_x, target_y, 2);
			}
			else {
				state = 2.1;	
				speed = 0;	
				t = 0;
			}
		}
		#endregion
		break;
	case 2.1:
		#region обычная атака
		if t < 21 t++;
		if t = 20{
            fnc_snd_play_onetime(snd_di_boss_appear)
			var i = instance_create_depth(x,y,depth,obj_bossmerch_phase3_mask);
			i.fol = id;
			i.enemy_hp = enemy_hp;
			i.next_state = 3;
		}
		#endregion
		break;
	case 3:
		#region переход 3 раз с обычной атакой 
		t++;
		if t = 29 {do {place_rand = irandom(3);} until (place_rand!=old_place) }
		if t > 30 {
			old_place = place_rand;
			if point_distance(x, y, target_x, target_y) > 2
			{
			    move_towards_point(target_x, target_y, 2);
			}
			else {
				state = 3.1;	
				speed = 0;	
				t = 0;
			}
		}
		#endregion
		break;
	case 3.1:
		#region обычная атака
		if t < 21 t++;
		if t = 20{
            fnc_snd_play_onetime(snd_di_boss_appear)
			var i = instance_create_depth(x,y,depth,obj_bossmerch_phase3_mask);
			i.fol = id;
			i.enemy_hp = enemy_hp;
			i.next_state = 4;
		}
		#endregion
		break;
	case 4:
		#region Переход на бок и обстрел 
		t++;
		if t > 30 {
			if point_distance(x, y, 32, 80) > 2
			{
			    move_towards_point(32, 80, 2);
			}
			else {
				state = 4.1;	
				speed = 0;	
				t = 0;
			}	
		}
		#endregion
		break;
	case 4.1:
		#region 
		if t < 21 t++;
		if t = 20{
            fnc_snd_play_onetime(snd_di_boss_appear)
			var i = instance_create_depth(x,y,depth,obj_bossmerch_phase3_mask);
			i.fol = id;
			i.state = 1;
			i.enemy_hp = enemy_hp;
			i.next_state = 5;
		}
		#endregion
		break;
	case 5:
		#region Переход на другой бок и обстрел  
		t++;
		if t > 30 {
			if point_distance(x, y, 432, 80) > 4
			{
			    move_towards_point(432, 80, 4);
			}
			else {
				state = 5.1;	
				speed = 0;	
				t = 0;
			}	
		}
		#endregion
		break;
	case 5.1:
		#region
		if t < 21 t++;
		if t = 20{
			var i = instance_create_depth(x,y,depth,obj_bossmerch_phase3_mask);
			i.fol = id;
			i.state = 2;
			i.enemy_hp = enemy_hp;
			i.next_state = 6;
		}
		#endregion
		break;
	case 6:
		#region переход в центр и обстрел сверх в одну из сторон и в другую 
		t++;
		if t > 30 {
			if point_distance(x, y, 232, 128) > 2
			{
			    move_towards_point(232, 128, 2);
			}
			else {
				state = 6.1;	
				speed = 0;	
				t = 0;
			}	
		}
		#endregion
		break;
	case 6.1:
		#region
		if t < 21 t++;
		if t = 20{
            fnc_snd_play_onetime(snd_di_boss_appear)
			var i = instance_create_depth(x,y,depth,obj_bossmerch_phase3_mask);
			i.fol = id;
			i.state = 3;
			i.enemy_hp = enemy_hp;
			i.next_state = 1;
		}
		#endregion
		break;
	case 0:
		#region появление 
		#endregion
		break;
}

#region Death
if enemy_hp<=0 {
	instance_create_depth(x,y,-10,obj_cutscene_deathisland_ending_merch);
    instance_destroy(obj_Player)
    fnc_msc_stop_play_slow();
    room_goto(DI_ending)
	instance_destroy();	
}
#endregion


