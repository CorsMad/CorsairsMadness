/// @description Insert description here
// You can write your code in this editor

switch(state){
    case 0:
		t++;
		switch(t){
			case 5:image_index = 1;break;	
			case 10:image_index = 2;break;	
			case 15:image_index = 3;break;	
			case 20:image_index = 4;break;	
			case 25:image_index = 5;break;	
		}
        break;
    case 1:
        break;
    case 2:
    t++;
	switch(t){
		case 5:
			sprite_index = spr_ct_di_tboots;
			image_index = 0;
			break;
		case 25: image_index = 1;break;
		case 50:
			image_index = 2;
			var b = instance_create_depth(x,y-16,depth-1,obj_ctscDI_merch1_boots)
			b.hspd = -2;
			break;
		case 75:
			sprite_index = spr_ct_di_appear;
			image_index = 5;
			break;
	}

    if t = 100{
        state = 3;
        t = 0;
    }
        break;
    case 3:
    t++;
	switch(t){
		case 5: image_index = 4;break;		
		case 10: image_index = 3;break;		
		case 15: image_index = 2;break;		
		case 20: image_index = 1;break;		
		case 25: image_index = 0;break;	
		case 30:
		obj_cutscene_DIArrive_player_draw.state = 2;
		instance_destroy();
		break;
	}
	
}








