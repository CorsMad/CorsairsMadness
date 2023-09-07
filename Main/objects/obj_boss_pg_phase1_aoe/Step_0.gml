/// @description Insert description here
// You can write your code in this editor

//ВКЛЮЧИТЬ КНОПКУ

t++; 
switch(t)
{
	case 5:image_angle+=45;image_index = 1;break;
	case 10: image_angle+=45;image_index = 2;
		instance_create_depth(x,y,depth,obj_boss_pg_phase1_aoe_mask);
		if turn_switch = 1 {
			if instance_exists(obj_boss_pg_light_trigger) {
				if obj_boss_pg_light_trigger.isOn = 0 obj_boss_pg_light_trigger.isOn = 1; 
			}
		}
		break;
	case 15: image_angle+=35;image_index = 3;break;
	case 20: image_angle+=25;image_index = 4;image_alpha = 0.7;break;
	case 25: instance_destroy();break;
}	


