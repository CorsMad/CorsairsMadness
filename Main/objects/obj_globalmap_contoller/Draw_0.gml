/// @description Insert description here
// You can write your code in this editor

#region Информация
    draw_sprite_ext(spr_map_info,0,16,16,1,1,0,c_white,1);
    draw_set_font(fnt_pixel);
    draw_set_halign(fa_center)
    
    switch(island)
    {
        case 0:
            draw_text(16+81,32,i0);
            switch(global.completed_JF2)
            {
                case 0:
                    draw_sprite(spr_map_global_follower_jngl,0,16+81,64);break;
                    break;
                case 1:
                    switch(global.saved_jungle)
                    {
                        case 0: draw_sprite(spr_map_global_follower_jngl,0,16+81,64);break;
                        case 1: draw_sprite(spr_text_icons,7,16+81-14,64-13.5);break;                
                    }
                    break;
            }            
            break;
        case 1: // ПУСТЫНЯ
            switch(global.completed_PD2)
            {
                case 0:
                    draw_sprite(spr_map_global_follower_jngl,0,16+81,64);break;
                    break;
                case 1:
                    switch(global.saved_desert)
                    {
                        case 0: draw_sprite(spr_map_global_follower_jngl,0,16+81,64);break;
                        case 1: draw_sprite(spr_text_icons,7,16+81-14,64-13.5);break;                
                    }
                    break;
            } 
            draw_text(16+81,32,i1);
            break;
        case 2: // SNOW
            switch(global.completed_PS2)
            {
                case 0:
                    draw_sprite(spr_map_global_follower_jngl,0,16+81,64);break;
                    break;
                case 1:
                    switch(global.saved_snow)
                    {
                        case 0: draw_sprite(spr_map_global_follower_jngl,0,16+81,64);break;
                        case 1: draw_sprite(spr_text_icons,7,16+81-14,64-13.5);break;                
                    }
                    break;
            } 
            draw_text(16+81,32,i2);
            break;
        case 3: // SHADOW
            switch(global.completed_PG2)
            {
                case 0:
                    draw_sprite(spr_map_global_follower_jngl,0,16+81,64);break;
                    break;
                case 1:
                    switch(global.saved_shadow)
                    {
                        case 0: draw_sprite(spr_map_global_follower_jngl,0,16+81,64);break;
                        case 1: draw_sprite(spr_text_icons,7,16+81-14,64-13.5);break;                
                    }
                    break;
            } 
            draw_text(16+81,32,i3);
            break;
        case 4: //
            switch(global.completed_PL2)
            {
                case 0:
                    draw_sprite(spr_map_global_follower_jngl,0,16+81,64);break;
                    break;
                case 1:
                    switch(global.saved_vulcano)
                    {
                        case 0: draw_sprite(spr_map_global_follower_jngl,0,16+81,64);break;
                        case 1: draw_sprite(spr_text_icons,7,16+81-14,64-13.5);break;                
                    }
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


