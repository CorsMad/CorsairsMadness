draw_sprite_ext(spr_map_desert_island,anim,240,135,1,1,0,c_white,island1JungleAlpha);
 
#region Информация

if global.language = 1 draw_set_font(fnt_pixel_ru) else draw_set_font(fnt_pixel);

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
        draw_text(14,9,dlvl1);
        break;
    case 3:
        draw_text(14,9,dlvl2);
        break;
    case 4:
        draw_text(14,9,temple);
        break;    
    case 5:
        draw_text(14,9,lair);
        break;    
}

/////////КЛЮЧИ/////////
if global.key_yellow1 = 0 draw_sprite(spr_hud_key_sq,2,22,54) else draw_sprite(spr_hud_key_sq,3,22,54);
if global.key_yellow2 = 0 draw_sprite(spr_hud_key_tri,2,46,54) else draw_sprite(spr_hud_key_tri,3,46,54);


draw_set_halign(fa_left)

switch(globalMapCounter) // Секреты
        {
            case 0: // Деревня
                break;   
            case 1: // Колизей
                draw_sprite(spr_hud_secret_big,0,22,32);
                draw_text(40,27,string(global.secrets_d_endurance) + "/1");
                break;  
            case 2: // 1 уровень
                draw_sprite(spr_hud_secret_big,0,22,32);
                draw_text(40,27,string(global.secrets_d1_s1 + global.secrets_d1_s2 + global.secrets_d1_s3) + "/3");
                break;  
            case 3: // 2 уровень
                draw_sprite(spr_hud_secret_big,0,22,32);
                draw_text(40,27,string(global.secrets_d2_r5 + global.secrets_d2b_s1 + global.secrets_d2p_r4) + "/3");
                break;  
            case 4: // 
                
                break;                  
            case 5: // 
                draw_sprite(spr_map_global_follower_desert,global.completed_PD2,72,54);
                break;   
        }    

#endregion
  
#region  установка
    switch(globalMapCounter)
    {
        case 0:
            draw_sprite_ext(spr_map_border,PointerFrame,394,200,1,1,0,c_white,1);
            break;
        case 1:
            draw_sprite_ext(spr_map_border,PointerFrame,324,142,1,1,0,c_white,1);
            break;
        case 2:
            draw_sprite_ext(spr_map_border,PointerFrame,278,168,1,1,0,c_white,1);                    
            break;
        case 3:
            draw_sprite_ext(spr_map_border,PointerFrame,194,188,1,1,0,c_white,1);                    
            break;
        case 4:
            draw_sprite_ext(spr_map_border,PointerFrame,240,104,1,1,0,c_white,1);                    
            break;        
        case 5:
            draw_sprite_ext(spr_map_border,PointerFrame,240,60,1,1,0,c_white,1);                    
            break;    
    }
#endregion

// Деревня
    draw_sprite(spr_map_pointer,2,394,200); // Деревня
    if Opened = 1 draw_sprite(spr_map_pointer,global.secrets_d_endurance,324,142); // Колизей                  
    draw_sprite(spr_map_pointer,global.key_yellow1,278,168); // 1 уровень
    draw_sprite(spr_map_pointer,global.key_yellow2,194,188); // 2 уровень
    if Opened = 1 draw_sprite(spr_map_pointer,global.completed_PD1,240,104); // Одержимый
    if global.completed_PD1 = 1 draw_sprite(spr_map_pointer,global.completed_PD2,239,60); // Одержимый