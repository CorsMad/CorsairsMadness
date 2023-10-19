/// @description Insert description here
// You can write your code in this editor


switch(state){
	case 0:
	t++;
	if t = 50{
		t = 0;
		state = 1
	}
		break;
	case 1:
		if vspd > -6 vspd -=0.2;
		y+=vspd;
		t++;
		if t = 30 {
			obj_camera_lastboss.state = 1;
			obj_bossmerch_bigblock.state = 1;
			instance_create_depth(112,736,depth+1,obj_ow_boss_merch_platoform_creator);
			instance_create_depth(144,688,depth+1,obj_ow_boss_merch_platoform_creator);
			instance_create_depth(192,640,depth+1,obj_ow_boss_merch_platoform_creator);
			instance_create_depth(336,624,depth+1,obj_ow_boss_merch_platoform_creator);
			instance_create_depth(384,576,depth+1,obj_ow_boss_merch_platoform_creator);
	
			instance_destroy();			
		}
		break;
}