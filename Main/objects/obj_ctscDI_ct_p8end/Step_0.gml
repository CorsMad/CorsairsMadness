/// @description Insert description here
// You can write your code in this editor


t++;
switch(t){
	case 5:image_index = 1;break;	
	case 10:image_index = 2;break;	
	case 15:image_index = 3;break;	
	case 20:image_index = 4;break;	
	case 25:image_index = 5;break;	
	case 50:sprite_index = spr_ct_di_tboomer;image_index = 0;break;
	case 60:image_index = 1;break;
	case 80:image_index = 2;
		var d = instance_create_depth(x,y,depth-1,obj_ctscDI_merch1_boomer)
		d.hspd = -2;
		break;
	case 100:sprite_index = spr_ct_di_appear;image_index = 5;break;
	case 105:image_index = 4;break;
	case 110:image_index = 3;
		 obj_cutscene_DI_player_p_r8_end.state = 4;
		 break;
	case 115:image_index = 2;break;
	case 120:image_index = 1;break;
	case 125:image_index = 0;break;
	case 130: instance_destroy();break;
	
}