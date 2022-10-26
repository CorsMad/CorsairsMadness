/// @description Insert description here
// You can write your code in this editor

#region отрисовка карт
    draw_sprite_ext(spr_map_global,anim,GlobalMapxPos,GlobalMapyPos,GlobalMapxScale,GlobalMapyScale,0,c_white,GlobalMapAlpha);
    draw_sprite_ext(spr_map_jungle_island,anim,240,135,island1JunglexScale,island1JungleyScale,0,c_white,island1JungleAlpha);
    draw_sprite_ext(spr_map_desert_island,anim,240,135,island1DesertxScale,island1DesertyScale,0,c_white,island1DesertAlpha);
    draw_sprite_ext(spr_map_snow_island,anim,240,135,island1SnowxScale,island1SnowyScale,0,c_white,island1SnowAlpha);
    draw_sprite_ext(spr_map_graveyard_island,anim,240,135,island1GraveyardxScale,island1GraveyardyScale,0,c_white,island1GraveyardAlpha);
    draw_sprite_ext(spr_map_lava_island,anim,240,135,island1LavaxScale,island1LavayScale,0,c_white,island1LavaAlpha);
#endregion

#region отрисовка меток
switch(island)
{
    case 1: // Джунгли
        if island1JungleAlpha = 1
        { 
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
            }
            // Деревня
            draw_sprite(spr_map_pointer,0,124,180); // Деревня
            draw_sprite(spr_map_pointer,0,240,196); // Колизей            
            draw_sprite(spr_map_pointer,0,218,80); // 1 уровень
            draw_sprite(spr_map_pointer,0,350,140); // 2 уровень
            draw_sprite(spr_map_pointer,0,310,80); // Одержимый
        }
        break;
    case 2: // Пустыня
        if island1DesertAlpha = 1
        {  
            switch(globalMapCounter)
            {
                case 0:
                    draw_sprite(spr_map_border,0,416,172);
                    break;
                case 1:
                    draw_sprite(spr_map_border,0,328,124);
                    break;
                case 2:
                    draw_sprite(spr_map_border,0,248,144);
                    break;
                case 3:
                    draw_sprite(spr_map_border,0,196,176);
                    break;
                case 4:
                    draw_sprite(spr_map_border,0,236,84);
                    break;        
            }
            draw_sprite(spr_map_pointer,0,416,172); // Деревня
            draw_sprite(spr_map_pointer,0,328,124); // Колизей
            draw_sprite(spr_map_pointer,0,248,144); // 1 уровень
            draw_sprite(spr_map_pointer,0,196,176); // 2 уровень
            draw_sprite(spr_map_pointer,0,236,84); // Одержимый
        }
        break;
    case 3: // Зима
        if island1SnowAlpha = 1
        {
            switch(globalMapCounter)
            {
                case 0:
                    draw_sprite(spr_map_border,0,124,208);
                    break;
                case 1:
                    draw_sprite(spr_map_border,0,224,204);
                    break;
                case 2:
                    draw_sprite(spr_map_border,0,356,212);
                    break;
                case 3:
                    draw_sprite(spr_map_border,0,336,112);
                    break;
                case 4:
                    draw_sprite(spr_map_border,0,172,96);
                    break;        
            }
            draw_sprite(spr_map_pointer,0,124,208); // Деревня
            draw_sprite(spr_map_pointer,0,224,204); // Колизей
            draw_sprite(spr_map_pointer,0,356,212); // 1 уровень
            draw_sprite(spr_map_pointer,0,336,112); // 2 уровень
            draw_sprite(spr_map_pointer,0,172,96); // Одержимый
        }
        break;
    case 4: // Лава
        if island1LavaAlpha = 1
        {
            switch(globalMapCounter)
            {
                case 0:
                    draw_sprite(spr_map_border,0,124,196);
                    break;
                case 1:
                    draw_sprite(spr_map_border,0,284,232);
                    break;
                case 2:
                    draw_sprite(spr_map_border,0,256,184);
                    break;
                case 3:
                    draw_sprite(spr_map_border,0,196,108);
                    break;
                case 4:
                    draw_sprite(spr_map_border,0,396,100);
                    break;        
            }
            draw_sprite(spr_map_pointer,0,124,196); // Деревня
            draw_sprite(spr_map_pointer,0,284,232); // Колизей
            draw_sprite(spr_map_pointer,0,256,184); // 1 уровень
            draw_sprite(spr_map_pointer,0,196,108); // 2 уровень
            draw_sprite(spr_map_pointer,0,396,100); // Одержимый
        }
        break;
    case 5: // Кладбище
        if island1GraveyardAlpha = 1
        {
            switch(globalMapCounter)
            {
                case 0:
                    draw_sprite(spr_map_border,0,124,200);
                    break;
                case 1:
                    draw_sprite(spr_map_border,0,252,160);
                    break;
                case 2:
                    draw_sprite(spr_map_border,0,328,208);
                    break;
                case 3:
                    draw_sprite(spr_map_border,0,156,104);
                    break;
                case 4:
                    draw_sprite(spr_map_border,0,296,96);
                    break;        
            }
            draw_sprite(spr_map_pointer,0,124,200); // Деревня
            draw_sprite(spr_map_pointer,0,252,160); // Колизей
            draw_sprite(spr_map_pointer,0,328,208); // 1 уровень
            draw_sprite(spr_map_pointer,0,156,104); // 2 уровень
            draw_sprite(spr_map_pointer,0,296,96); // Одержимый
        }
        break;
}
#endregion

#region Отрисовка outliner

if GlobalMapAlpha = 1
{
    draw_sprite_ext(spr_map_global_outline,globalMapCounter,240,135,1,1,0,c_white,OutlinerAlpha);
}
#endregion

#region отрисовка облаков
    draw_sprite_ext(spr_map_cloud_back,0,CloudLBackX,135,1,1,0,c_white,CloudFarAlpha);
    draw_sprite_ext(spr_map_cloud_front,0,CloudLFrontX,135,1,1,0,c_white,CloudLAlpha);
    draw_sprite_ext(spr_map_cloud_back,0,CloudRBackX,135,-1,1,0,c_white,CloudFarAlpha);
    draw_sprite_ext(spr_map_cloud_front,0,CloudRFrontX,135,-1,1,0,c_white,CloudLAlpha);
#endregion

#region Отрисовка облаков глобальной карты
    draw_sprite_ext(spr_map_global_cloud,0,240,135,CloudGlobalXscale,CloudGlobalYscale,0,c_white,CloudGlobalAlpha);
#endregion

#region отрисовка информации
draw_rectangle_color(1,1,131,67,c_grey,c_grey,c_grey,c_grey,false);
draw_rectangle_color(4,4,128,64,c_black,c_black,c_black,c_black,false);
//Название острова

    switch(island)
    {
        case 0: 
            switch(globalMapCounter)
            {
                case 1: islandName = "-Jungle island-";break;
                case 2: islandName = "-Desert island-";break;
                case 3: islandName = "-Snow island-";break;
                case 4: islandName = "-Lava island-";break;
                case 5: islandName = "-Shadow island-";break;
            }
            break;
    }

draw_set_font(fnt_pixel);
draw_set_color(c_white);
draw_set_halign(fa_center)

#region Название острова на глобальной карте
    if island = 0 
    {
        draw_text(67,6,string(islandName));
        switch(globalMapCounter)
        {
            case 1:draw_sprite(spr_map_global_follower_jngl,0,22,51);break;
        }
    
    }
#endregion

#region Детальная информация на островах

switch(island) // гланая информация
{
    case 1: // Джунгли
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

            
        }
        break;
    case 2: // Пустыня
        switch(globalMapCounter)
        {
            case 0:
                draw_text(67,6,"Desert Village");
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
                draw_text(67,6,"Desert Temple");
                break;
        }
        break;
    case 3: // Снег
        switch(globalMapCounter)
        {
            case 0:
                draw_text(67,6,"Snow Village");
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
                draw_text(67,6,"Snow Temple");
                break;
        }
        break;
    case 4: // Лава
        switch(globalMapCounter)
        {
            case 0:
                draw_text(67,6,"Lava Village");
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
                draw_text(67,6,"Lava Temple");
                break;
        }
        break;
    case 5: // Кладбище
        switch(globalMapCounter)
        {
            case 0:
                draw_text(67,6,"Shadow Village");
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
                draw_text(67,6,"Shadow Temple");
                break;
        }
        break;        
}

#endregion

#region Информация по Монетам
draw_set_halign(fa_left)

switch(island)
{
    case 1: // Джунгли
        draw_sprite(spr_hud_key_sq_jngl,0,22,51);
        draw_sprite(spr_hud_key_tri_jngl,1,46,51);
        
        switch(globalMapCounter)
        {
            case 0: // Деревня
                break;   
            case 1: // Колизей
                draw_sprite(spr_hud_secret_big,0,22,29);
                draw_text(40,24,"0/1");
                break;  
            case 2: // 1 уровень
                draw_sprite(spr_hud_secret_big,0,22,29);
                draw_text(40,24,"0/3");
                break;  
            case 3: // 2 уровень
                draw_sprite(spr_hud_secret_big,0,22,29);
                draw_text(40,24,"2/3");
                break;  
            case 4: // 
                draw_sprite(spr_map_global_follower_jngl,0,70,51);
                break;                  
        }       
        break;
    case 2: // Пустыня
        draw_sprite(spr_hud_key_sq_desert,0,22,51);
        draw_sprite(spr_hud_key_tri_desert,1,46,51);
        switch(globalMapCounter)
        {
            case 0: // Деревня
                break;   
            case 1: // Колизей
                draw_sprite(spr_hud_secret_big,0,22,29);
                draw_text(40,24,"0/1");
                break;  
            case 2: // 1 уровень
                draw_sprite(spr_hud_secret_big,0,22,29);
                draw_text(40,24,"0/3");
                break;  
            case 3: // 2 уровень
                draw_sprite(spr_hud_secret_big,0,22,29);
                draw_text(40,24,"2/3");
                break;  
            case 4: // 
                break;                  
        }       
        break;
    case 3: // Снег
        draw_sprite(spr_hud_key_sq_snow,0,22,51);
        draw_sprite(spr_hud_key_tri_snow,1,46,51);
        switch(globalMapCounter)
        {
            case 0: // Деревня
                break;   
            case 1: // Колизей
                draw_sprite(spr_hud_secret_big,0,22,29);
                draw_text(40,24,"0/1");
                break;  
            case 2: // 1 уровень
                draw_sprite(spr_hud_secret_big,0,22,29);
                draw_text(40,24,"0/3");
                break;  
            case 3: // 2 уровень
                draw_sprite(spr_hud_secret_big,0,22,29);
                draw_text(40,24,"2/3");
                break;  
            case 4: // 
                break;                  
        }       
        break;
    case 4: // Лава
        draw_sprite(spr_hud_key_sq_lava,0,22,51);
        draw_sprite(spr_hud_key_tri_lava,1,46,51);
        switch(globalMapCounter)
        {
            case 0: // Деревня
                break;   
            case 1: // Колизей
                draw_sprite(spr_hud_secret_big,0,22,29);
                draw_text(40,24,"0/1");
                break;  
            case 2: // 1 уровень
                draw_sprite(spr_hud_secret_big,0,22,29);
                draw_text(40,24,"0/3");
                break;  
            case 3: // 2 уровень
                draw_sprite(spr_hud_secret_big,0,22,29);
                draw_text(40,24,"2/3");
                break;  
            case 4: // 
                break;                  
        }       
        break;
    case 5: // Кладбище
        draw_sprite(spr_hud_key_sq_shadow,0,22,51);
        draw_sprite(spr_hud_key_tri_shadow,1,46,51);
        switch(globalMapCounter)
        {
            case 0: // Деревня
                break;   
            case 1: // Колизей
                draw_sprite(spr_hud_secret_big,0,22,29);
                draw_text(40,24,"0/1");
                break;  
            case 2: // 1 уровень
                draw_sprite(spr_hud_secret_big,0,22,29);
                draw_text(40,24,"0/3");
                break;  
            case 3: // 2 уровень
                draw_sprite(spr_hud_secret_big,0,22,29);
                draw_text(40,24,"2/3");
                break;  
            case 4: // 
                break;                  
        }       
        break;
}

#endregion

#endregion