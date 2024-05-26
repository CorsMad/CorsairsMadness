/// @description Insert description here
// You can write your code in this editor



#region Информация
    draw_sprite_ext(spr_map_info,0,16,16,1,1,0,c_white,1);
	draw_set_color(c_white);
	draw_set_halign(fa_center)
	if global.language = 1 {
		draw_set_font(fnt_pixel_ru);
		draw_text(16+81,33.5+2,i0);
	}else {
		draw_set_font(fnt_pixel);
		draw_text(16+81,33.5,i0);
	}
    

	
    draw_sprite(spr_map_global_knife,0,163,120);
	draw_sprite(spr_map_global_knife,0,325,177);
	draw_sprite(spr_map_global_knife,0,389,123);
    draw_sprite(spr_map_global_knife,0,345,36);
	draw_sprite(spr_map_global_knife,0,196,54);
#region иконки

    
#endregion
    
#endregion

if t > 85
{       
    #region otline выбора острова
    draw_sprite_ext(spr_map_global_outline,5,240,135,1,1,0,c_white,OutlinerAlpha);
    #endregion   
}


