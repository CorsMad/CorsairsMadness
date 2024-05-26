/// @description Insert description here
// You can write your code in this editor

switch(isOn)
{
	case 0:
		t = 0;
		break;
	case 1:
		t++;
		switch(t)
		{
			case 50:
				// ВЫСТРЕЛ ИЗ ВЕРХА instance_create_depth(x,y,depth,obj_b)
				break;
			case 100:
				// выстрел из низа
				break;
			case 150:
				// выстрел из середины
				break;
			case 190:
				instance_create_depth(x,y+80,depth,obj_powerup_barrel_cannon_vulcano_Creator);
				t = 0;
				isOn = 0;
				break;
		}
		break;
}


#region anim
switch(animstate){
	case 0:
		t_anim++;
		switch(t_anim){
			case 5:image_index = 1;break;	
			case 10:image_index = 2;break;	
			case 15:image_index = 3;break;	
			case 20: animstate = 1;t_anim = 0;break;
		}
		break;
	case 1:
		sprite_index = spr_boat_mobstacle;
		image_speed = 1;
		break;
}

if enemy_hp < 40 {
	t1++;
	if t1 = 40 {
		t1=0;
		var s1 = instance_create_depth(x+random_range(2,16),y+random_range(4,158),depth-1,obj_sfx_sparkle_1_player);	
		s1.image_xscale = 1;
		s1.image_yscale = 1;
		var s2 = instance_create_depth(x+random_range(2,16),y+random_range(4,158),depth-1,obj_sfx_sparkle_1_player);	
		s2.image_xscale = 1;
		s2.image_yscale = 1;
	}
}

if enemy_hp <=25 && enemy_hp > 10 {
	t2++;
	if t2 = 25 {
		t2=0;
		var s3 = instance_create_depth(x+random_range(2,16),y+random_range(4,158),depth-1,obj_sfx_sparkle_1_player);	
		s3.image_xscale = 1;
		s3.image_yscale = 1;
		var s4 = instance_create_depth(x+random_range(2,16),y+random_range(4,158),depth-1,obj_sfx_sparkle_1_player);	
		s4.image_xscale = 1;
		s4.image_yscale = 1;
	}	
}

if enemy_hp < 10 {
	t3++;
	if t3 = 10 {
		t3=0;
		var s5 = instance_create_depth(x+random_range(2,16),y+random_range(4,158),depth-1,obj_sfx_sparkle_1_player);	
		s5.image_xscale = 1;
		s5.image_yscale = 1;
		var s6 = instance_create_depth(x+random_range(2,16),y+random_range(4,158),depth-1,obj_sfx_sparkle_1_player);	
		s6.image_xscale = 1;
		s6.image_yscale = 1;
	}	
}

#endregion



#region Разруш
if enemy_hp<=0 {
	instance_destroy();
	instance_create_depth(x,y,depth,obj_boat_boss_vulcano_1_wall_destr)
}
#endregion
#region получение урона

fnc_boat_take_dmg_pistol(1)
fnc_boat_take_dmg_fastshot(0.6,1.8)
fnc_boat_take_dmg_dual_pistol(0.75,1,1.4) 
fnc_boat_take_dmg_blunderbuss(0.6)
fnc_boat_take_dmg_parrotcage(1,1.25,1.25,1.25)
fnc_boat_take_dmg_cannon(4) 

#endregion

#region red
if hit_cd_master!=enemy_hp {
	hit_cd_master = enemy_hp;
	red = 1;
}

if red!=0 {red++;image_blend = c_red;}
if red>=5 red=0;
if red = 0 image_blend = c_white;


#endregion