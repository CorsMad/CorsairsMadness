/// @description Insert description here
// You can write your code in this editor

#region Информация
    draw_sprite_ext(spr_map_info,0,16,16,1,1,0,c_white,1);
	draw_set_color(c_white);
    draw_set_font(fnt_pixel);
    draw_set_halign(fa_center)
    
    
    draw_text(16+81,32,i0);
    
    
#region иконки

    
#endregion
    
#endregion

if t > 85
{       
    #region otline выбора острова
    draw_sprite_ext(spr_map_global_outline,5,240,135,1,1,0,c_white,OutlinerAlpha);
    #endregion   
}


