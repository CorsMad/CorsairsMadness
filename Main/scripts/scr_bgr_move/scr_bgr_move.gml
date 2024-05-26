// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_bgr_move_main_menu(){
		bgr_t++;
		bgr_move--;
		if bgr_t < 100 {
			if bgr_sky_cover_alpha > 0 bgr_sky_cover_alpha-=0.05;
		}
		if bgr_t > 300 {
			if bgr_sky_cover_alpha < 1 bgr_sky_cover_alpha+=0.05;	
			if bgr_sky_cover_alpha >=1 {
				bgr_t = 0;
				bgr_move = 0;
				if bgr_state < 4 bgr_state++; else bgr_state = 0
			}
		}
			
	switch(bgr_state){
				
		case 0:
			bgr_sky	= bgr_sky_bright;
			bgr_bgr	= Sprite607;
			bgr_yoffset = -32
			bgr_sky_yoffset = -32;
			break;
		case 1:
			bgr_sky	= bgr_sand_level_sky;
			bgr_bgr	= bgr_sand_level1;
			bgr_yoffset = -96
			bgr_sky_yoffset = -80;
			break;
		case 2:
			bgr_bgr	= bgr_snow_level;
			bgr_sky	= bgr_cemetery_sky_ext;
			bgr_yoffset = -64
			bgr_sky_yoffset = -16;
			break;
		case 3:
			bgr_sky	= bgr_cemetery_sky_ext;
			bgr_bgr	= bgr_cemetery_1;
			bgr_yoffset = -64
			bgr_sky_yoffset = -16;
			break;
		case 4:
			bgr_sky	= bgr_lava_ground_back;
			bgr_bgr	= bgr_lava_ground_front;
			bgr_yoffset = -64
			bgr_sky_yoffset = -80;
			break;
	}
	
}