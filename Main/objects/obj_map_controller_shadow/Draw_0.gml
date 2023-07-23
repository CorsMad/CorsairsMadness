draw_sprite_ext(spr_map_graveyard_island,anim,240,135,1,1,0,c_white,island1JungleAlpha);
 
#region Информация

if global.language = 1 draw_set_font(fnt_pixel_ru) else draw_set_font(fnt_pixel);

draw_rectangle_color(1,1,131,67,c_grey,c_grey,c_grey,c_grey,false);
draw_rectangle_color(4,4,128,64,c_black,c_black,c_black,c_black,false);
draw_set_color(c_white);
draw_set_halign(fa_center)
switch(globalMapCounter)
{
    case 0:
        draw_text(67,6,village);
        break;
    case 1:
        draw_text(67,6,endurance);
        break;
    case 2:
        draw_text(67,6,lvl1);
        break;
    case 3:
        draw_text(67,6,lvl2);
        break;
    case 4:
        draw_text(67,6,temple);
        break;    
    case 5:
        draw_text(67,6,lair);
        break;    
}

/////////КЛЮЧИ/////////
if global.key_purple1 = 0 draw_sprite(spr_hud_key_sq_jngl,0,22,51) else draw_sprite(spr_hud_key_sq_jngl,1,22,51);
if global.key_purple2 = 0 draw_sprite(spr_hud_key_tri_jngl,0,46,51) else draw_sprite(spr_hud_key_tri_jngl,1,46,51);


draw_set_halign(fa_left)

switch(globalMapCounter) // Секреты
        {
            case 0: // Деревня
                break;   
            case 1: // Колизей
                draw_sprite(spr_hud_secret_big,0,22,29);
                draw_text(40,24,string(global.secrets_g_endurance) + "/1");
                break;  
            case 2: // 1 уровень
                draw_sprite(spr_hud_secret_big,0,22,29);
                draw_text(40,24,string(global.secrets_g1_s1 + global.secrets_g1_r12 + global.secrets_g1_s2) + "/3");
                break;  
            case 3: // 2 уровень
                draw_sprite(spr_hud_secret_big,0,22,29);
                draw_text(40,24,string(global.secrets_g2_r6 + global.secrets_g2b_s + global.secrets_g2p_r6) + "/3");
                break;  
            case 4: // 
                
                break;                  
            case 5: // 
                draw_sprite(spr_map_global_follower_jngl,global.completed_PG2,70,51);
                break;   
        }    

#endregion
  
#region  установка
    switch(globalMapCounter)
    {
        case 0:
            draw_sprite_ext(spr_map_border,PointerFrame,109,195,1,1,0,c_white,1);
            break;
        case 1:
            draw_sprite_ext(spr_map_border,PointerFrame,251,155,1,1,0,c_white,1);
            break;
        case 2:
            draw_sprite_ext(spr_map_border,PointerFrame,148,100,1,1,0,c_white,1);                    
            break;
        case 3:
            draw_sprite_ext(spr_map_border,PointerFrame,310,207,1,1,0,c_white,1);                    
            break;
        case 4:
            draw_sprite_ext(spr_map_border,PointerFrame,289,97,1,1,0,c_white,1);                    
            break;        
        case 5:
            draw_sprite_ext(spr_map_border,PointerFrame,289,42,1,1,0,c_white,1);                    
            break;    
    }
#endregion

// Деревня
    draw_sprite(spr_map_pointer,2,109,192); // Деревня
    if Opened = 1 draw_sprite(spr_map_pointer,global.secrets_g_endurance,251,155); // Колизей                  
    draw_sprite(spr_map_pointer,global.key_purple1,148,100); // 1 уровень
    draw_sprite(spr_map_pointer,global.key_purple2,310,207); // 2 уровень
    if Opened = 1 draw_sprite(spr_map_pointer,global.completed_PG1,289,97); // Одержимый
    if global.completed_PG1 = 1 draw_sprite(spr_map_pointer,global.completed_PG2,289,42); // Одержимый