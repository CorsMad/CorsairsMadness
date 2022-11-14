draw_sprite_ext(spr_map_jungle_island,anim,240,135,1,1,0,c_white,island1JungleAlpha);
 
#region Информация

draw_rectangle_color(1,1,131,67,c_grey,c_grey,c_grey,c_grey,false);
draw_rectangle_color(4,4,128,64,c_black,c_black,c_black,c_black,false);
draw_set_font(fnt_pixel);
draw_set_color(c_white);
draw_set_halign(fa_center)
switch(globalMapCounter)
{
    case 0:
        draw_text(67,6,"Jungle Village");
        break;
    case 1:
        draw_text(67,6,"endurance test");
        break;
    case 2:
        draw_text(67,6,"1st level");
        break;
    case 3:
        draw_text(67,6,"2nd level");
        break;
    case 4:
        draw_text(67,6,"Jungle Temple");
        break;    
    case 5:
        draw_text(67,6,"Temple Lair");
        break;    
}

/////////КЛЮЧИ/////////
if global.key_green1 = 0 draw_sprite(spr_hud_key_sq_jngl,0,22,51) else draw_sprite(spr_hud_key_sq_jngl,1,22,51);
if global.key_green2 = 0 draw_sprite(spr_hud_key_tri_jngl,0,46,51) else draw_sprite(spr_hud_key_tri_jngl,1,46,51);


draw_set_halign(fa_left)

switch(globalMapCounter) // Секреты
        {
            case 0: // Деревня
                break;   
            case 1: // Колизей
                draw_sprite(spr_hud_secret_big,0,22,29);
                draw_text(40,24,string(global.secrets_j2_endurance) + "/1");
                break;  
            case 2: // 1 уровень
                draw_sprite(spr_hud_secret_big,0,22,29);
                draw_text(40,24,string(global.secrets_j1_r16 + global.secrets_j1_r5 + global.secrets_j1_s1) + "/3");
                break;  
            case 3: // 2 уровень
                draw_sprite(spr_hud_secret_big,0,22,29);
                draw_text(40,24,string(global.secrets_j2_s1 + global.secrets_j2p_r4 + global.secrets_J2b_s1) + "/3");
                break;  
            case 4: // 
                
                break;                  
            case 5: // 
                draw_sprite(spr_map_global_follower_jngl,global.completed_JF2,70,51);
                break;   
        }    

#endregion
  
#region  установка
    switch(globalMapCounter)
    {
        case 0:
            draw_sprite_ext(spr_map_border,PointerFrame,124,180,1,1,0,c_white,1);
            break;
        case 1:
            draw_sprite_ext(spr_map_border,PointerFrame,240,196,1,1,0,c_white,1);
            break;
        case 2:
            draw_sprite_ext(spr_map_border,PointerFrame,218,80,1,1,0,c_white,1);                    
            break;
        case 3:
            draw_sprite_ext(spr_map_border,PointerFrame,350,140,1,1,0,c_white,1);                    
            break;
        case 4:
            draw_sprite_ext(spr_map_border,PointerFrame,310,80,1,1,0,c_white,1);                    
            break;        
        case 5:
            draw_sprite_ext(spr_map_border,PointerFrame,310,38,1,1,0,c_white,1);                    
            break;    
    }
#endregion

// Деревня
    draw_sprite(spr_map_pointer,0,124,180); // Деревня
    if Opened = 1 draw_sprite(spr_map_pointer,global.secrets_j2_endurance,240,196); // Колизей                  
    draw_sprite(spr_map_pointer,global.key_green1,218,80); // 1 уровень
    draw_sprite(spr_map_pointer,global.key_green2,350,140); // 2 уровень
    if Opened = 1 draw_sprite(spr_map_pointer,global.completed_JF1,310,80); // Одержимый
    if global.completed_JF1 = 1 draw_sprite(spr_map_pointer,global.completed_JF2,310,38); // Одержимый