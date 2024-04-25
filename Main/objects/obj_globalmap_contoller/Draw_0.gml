/// @description Insert description here
// You can write your code in this editor

#region Информация
    draw_sprite_ext(spr_map_info,0,16,16,1,1,0,c_white,1);
	draw_set_color(c_white);
    if global.language = 1 draw_set_font(fnt_pixel_ru); else draw_set_font(fnt_pixel);	
    draw_set_halign(fa_center)
    
    switch(island)
    {
        case 0:    
            switch(global.completed_JF2)
            {
                case 0:
                    draw_sprite(spr_text_icons,13,81+2,48);break;
                    break;
                case 1:
					draw_sprite(spr_text_icons,18,81+2,48);
					draw_sprite(spr_text_icons,global.saved_jungle+24,81+2,48) ;
					
                    break;
            }     
			draw_text(16+81,32,i0);
            break;
        case 1: // ПУСТЫНЯ
			switch(global.completed_PD2)
            {
                case 0:
                    draw_sprite(spr_text_icons,14,81+2,48);break;
                    break;
                case 1:
					draw_sprite(spr_text_icons,19,81+2,48);
					draw_sprite(spr_text_icons,global.saved_desert+24,81+2,48) ;
					
                    break;
            }  
            draw_text(16+81,32,i1);
            break;
        case 2: // SNOW
            switch(global.completed_PS2)
            {
                case 0:
                    draw_sprite(spr_text_icons,15,81+2,48);break;
                    break;
                case 1:
					draw_sprite(spr_text_icons,20,81+2,48);
					draw_sprite(spr_text_icons,global.saved_snow+24,81+2,48) ;
					
                    break;
            } 
            draw_text(16+81,32,i2);
            break;
        case 3: // SHADOW
            switch(global.completed_PG2)
            {
                case 0:
                    draw_sprite(spr_text_icons,16,81+2,48);break;
                    break;
                case 1:
					draw_sprite(spr_text_icons,21,81+2,48)
					draw_sprite(spr_text_icons,global.saved_shadow+24,81+2,48) 
					
                    break;
            } 
            draw_text(16+81,32,i3);
            break;
        case 4: //
            switch(global.completed_PL2)
            {
                case 0:
                    draw_sprite(spr_text_icons,17,81+2,48);break;
                    break;
                case 1:
					draw_sprite(spr_text_icons,22,81+2,48)
					draw_sprite(spr_text_icons,global.saved_vulcano+24,81+2,48) 
					
                    break;
            } 
            draw_text(16+81,32,i4);
            break;
    }
    
#region иконки

    
#endregion
    
#endregion

if t > 5
{       
    #region otline выбора острова
    draw_sprite_ext(spr_map_global_outline,island,240,135,1,1,0,c_white,OutlinerAlpha);	
	
    #endregion   
}

if knives = 1{

	if global.completed_JF2 = 1 draw_sprite_ext(spr_map_global_knife,0,163,120,1,1,0,c_white,knives_alpha);
	if global.completed_PD2 = 1 draw_sprite_ext(spr_map_global_knife,0,325,177,1,1,0,c_white,knives_alpha);
	if global.completed_PS2 = 1 draw_sprite_ext(spr_map_global_knife,0,389,123,1,1,0,c_white,knives_alpha);
	if global.completed_PG2 = 1 draw_sprite_ext(spr_map_global_knife,0,345,36 ,1,1,0,c_white,knives_alpha);
	if global.completed_PL2 = 1 draw_sprite_ext(spr_map_global_knife,0,196,54 ,1,1,0,c_white,knives_alpha);	 
}
