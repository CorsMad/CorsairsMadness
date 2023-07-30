draw_sprite_ext(spr_map_snow_island,anim,240,135,1,1,0,c_white,island1JungleAlpha);
 
#region Информация

if global.language = 1 draw_set_font(fnt_pixel_ru) else draw_set_font(fnt_pixel);

//draw_rectangle_color(1,1,131,67,c_grey,c_grey,c_grey,c_grey,false);
//draw_rectangle_color(4,4,128,64,c_black,c_black,c_black,c_black,false);

draw_sprite(spr_map_info_big,0,1,1);

draw_set_color(c_white);
draw_set_halign(fa_left)
switch(globalMapCounter)
{
    case 0:
        draw_text(14,9,village);
        break;
    case 1:
        draw_text(14,9,endurance);
        break;
    case 2:
        draw_text(14,9,lvl1);
        break;
    case 3:
        draw_text(14,9,lvl2);
        break;
    case 4:
        draw_text(14,9,temple);
        break;    
    case 5:
        draw_text(14,9,lair);
        break;    
}


/////////КЛЮЧИ/////////
if global.key_blue1 = 0 draw_sprite(spr_hud_key_sq,4,22,54) else draw_sprite(spr_hud_key_sq,5,22,54);
if global.key_blue2 = 0 draw_sprite(spr_hud_key_tri,4,46,54) else draw_sprite(spr_hud_key_tri,5,46,54);


draw_set_halign(fa_left)

switch(globalMapCounter) // Секреты
        {
            case 0: // Деревня
                break;   
            case 1: // Колизей
                draw_sprite(spr_hud_secret_big,0,22,32);
                draw_text(40,27,string(global.secrets_sn_endurance) + "/1");
                break;  
            case 2: // 1 уровень
                draw_sprite(spr_hud_secret_big,0,22,32);
                draw_text(40,27,string(global.secrets_s1_r7 + global.secrets_s1_r13 + global.secrets_s1_s1) + "/3");
                break;  
            case 3: // 2 уровень
                draw_sprite(spr_hud_secret_big,0,22,32);
                draw_text(40,27,string(global.secrets_s2_s1 + global.secrets_s2b_r5 + global.secrets_s2p_s) + "/3");
                break;  
            case 4: // 
                
                break;                  
            case 5: // 
                draw_sprite(spr_map_global_follower_jngl,global.completed_PS2,72,54);
                break;   
        }    

#endregion
  
#region  установка
    switch(globalMapCounter)
    {
        case 0:
            draw_sprite_ext(spr_map_border,PointerFrame,136,202,1,1,0,c_white,1);
            break;
        case 1:
            draw_sprite_ext(spr_map_border,PointerFrame,218,202,1,1,0,c_white,1);
            break;
        case 2:
            draw_sprite_ext(spr_map_border,PointerFrame,375,217,1,1,0,c_white,1);                    
            break;
        case 3:
            draw_sprite_ext(spr_map_border,PointerFrame,354,107,1,1,0,c_white,1);                    
            break;
        case 4:
            draw_sprite_ext(spr_map_border,PointerFrame,171,88,1,1,0,c_white,1);                    
            break;        
        case 5:
            draw_sprite_ext(spr_map_border,PointerFrame,171,29,1,1,0,c_white,1);                    
            break;    
    }
#endregion

// Деревня
    draw_sprite(spr_map_pointer,2,136,202); // Деревня
    if Opened = 1 draw_sprite(spr_map_pointer,global.secrets_sn_endurance,218,202); // Колизей                  
    draw_sprite(spr_map_pointer,global.key_blue1,375,217); // 1 уровень
    draw_sprite(spr_map_pointer,global.key_blue2,354,107); // 2 уровень
    if Opened = 1 draw_sprite(spr_map_pointer,global.completed_PS1,171,88); // Одержимый
    if global.completed_PS1 = 1 draw_sprite(spr_map_pointer,global.completed_PS2,171,29); // Одержимый