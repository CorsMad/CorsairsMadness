/// @description Insert description here
// You can write your code in this editor

if isOn = 0 && (place_meeting(x,y,obj_hitbox) || place_meeting(x,y,obj_item_boomerang))
{
    if instance_exists(obj_pause_controller) instance_destroy(obj_pause_controller);
    fnc_msc_stop_play();    
    fnc_snd_play_onetime(snd_chest_destruct);
	isOn = 1;
	image_speed = 1;
}
if (image_index > image_number - 1) && isOn = 1
{
    image_speed = 0;
}
if isOn = 1 && a < 57
{
	a++;
}

switch(a)
{
	case 1:var k = instance_create_depth(x,y-16,-1,obj_money1);
		   k.hspd  = random_range(-20,20)/20; break;
	case 5:var k = instance_create_depth(x,y-16,-1,obj_money1);
		   k.hspd = random_range(-20,20)/20; break;
	case 10:var k = instance_create_depth(x,y-16,-1,obj_money1);
			k.hspd = random_range(-20,20)/20; break;
	case 15:var k = instance_create_depth(x,y-16,-1,obj_money10);
		   k.hspd = random_range(-20,20)/20; break;
	case 20:var k = instance_create_depth(x,y-16,-1,obj_money1);
		   k.hspd = random_range(-20,20)/20; break;
	case 25:var k = instance_create_depth(x,y-16,-1,obj_money10);
		   k.hspd = random_range(-20,20)/20; break;
	case 30:var k = instance_create_depth(x,y-16,-1,obj_money1);
		   k.hspd = random_range(-20,20)/20; break;
	case 35:var k = instance_create_depth(x,y-16,-1,obj_money10);
		   k.hspd = random_range(-20,20)/20; break;
	case 40:var k = instance_create_depth(x,y-16,-1,obj_money10);
		  k.hspd = random_range(-20,20)/20; break;
	case 45:var k = instance_create_depth(x,y-16,-1,obj_money20);
		   k.hspd = random_range(-20,20)/20; break;
    case 50:var k = instance_create_depth(x,y-16,-1,obj_money20);
		   k.hspd = random_range(-20,20)/20; break;  
    case 55:var k = instance_create_depth(x,y-16,-1,obj_money20);
		   k.hspd = random_range(-20,20)/20; 
           instance_create_depth(0,0,0,obj_chest_j2_boss_ending);
           break;
}


