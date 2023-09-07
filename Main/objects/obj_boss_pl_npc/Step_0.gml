/// @description Insert description here
// You can write your code in this editor
if state = 0
{
    if t < 282 t++;
    switch(t)
    {
        case 50: 
            fnc_msc_play(msc_jp1_c_jp2_c);
			obj_camera_pl2.state = 1;
            break;
		case 200:
			sprite_index = spr_boss_lp_appear;
			image_speed = 0;
			image_index = 0;
			break;
		case 205: image_index = 1;break;
		case 210: image_index = 2;break;
		case 215: image_index = 3;break;
		case 220: image_index = 4;break;
		case 225: image_index = 5;break;
		case 230: image_index = 6;break;
		case 235: image_index = 7;break;
		case 240: 
			sprite_index = spr_boss_lp_idle;
			image_speed = 1;			
			break;
        case 280:
            instance_create_depth(x,y,-9999999999999999,obj_text_pl2_boss_cutscene);
            break;
    }
}
if state = 4
{
    t++;
    switch(t)
    {       
		case 40:	
			obj_camera_pl2.state = 3;
			break;
        case 200:
            instance_destroy(obj_boss_dp_mold_create);
            instance_create_depth(x,y,0,obj_boss_pl_phase1);
            obj_Player.isDead = 0;
            instance_destroy();           
    }
}