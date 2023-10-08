/// @description Insert description here
// You can write your code in this editor

fnc_lng_globalmap();


#region анимация 
 t++;
 //карты
 if t = 5 {anim++;t=0;}
 if anim > 6 anim = 0;
 //айтлайнер   
 t_o++;
 if t_o = 60 {t_o=0;}
 if t_o > 30 {OutlinerAlpha=1} else OutlinerAlpha=0.25; 
 //указатель
 t_p++;
 if t_p = 60 {t_p=0;}
 if t_p > 30 {PointerFrame=1} else PointerFrame=0;  
#endregion
 
#region Нажатие кнопки

if !instance_exists(obj_map_confirm)
{
    if canPress = 1
    {
        player_input();
        var sl = keyboard_check_pressed(vk_left)
        var sr = keyboard_check_pressed(vk_right)
        var su = keyboard_check_pressed(vk_up)
        var sd = keyboard_check_pressed(vk_down)
        var saccept = keyboard_check_pressed(vk_space) || keyboard_check_pressed(vk_enter)
    }

    if (key_jump || key_attack || keyboard_check_pressed(vk_enter) || keyboard_check_pressed(vk_space)) && island = 0
    {   
        
        if global.PlayerOnIsland = 1 // Если игрок на острове
        {
            CloudChange = 1;
            switch(globalMapCounter)
            {
                case 1: turn = 1;canPress = 0;island = 1;globalMapCounter = 0;break;
                case 2: turn = 2;canPress = 0;island = 2;globalMapCounter = 0;break;
                case 3: turn = 3;canPress = 0;island = 3;globalMapCounter = 0;break;
                case 4: turn = 4;canPress = 0;island = 4;globalMapCounter = 0;break;
                case 5: turn = 5;canPress = 0;island = 5;globalMapCounter = 0;break;  
            }
        }
        else // Если игрок НЕ на острове
        {
            
            CloudChange = 1;
            switch(globalMapCounter)
            {
                case 1: 
                    if !instance_exists(obj_map_confirm_to_jungle) fnc_snd_play_over(snd_menu_accept);
                    instance_create_depth(0,0,depth-1,obj_map_confirm_to_jungle);break;
            }
            
        }
    }

    if key_back && island != 0
    {
        switch(island)
        {
            case 1:
                globalMapCounter = 1;
                break;
            case 2:
                globalMapCounter = 2;
                break;
            case 3:
                globalMapCounter = 3;
                break;
            case 4:
                globalMapCounter = 4;
                break;
            case 5:
                globalMapCounter = 5;
                break;
        }
        turn = 6;
        canPress = 0;
        island = 0; 
        island1JungleAlpha=0; 
        island1DesertAlpha=0; 
        island1SnowAlpha=0; 
        island1GraveyardAlpha=0; 
        island1LavaAlpha=0; 
    
        GlobalMapAlpha = 0;
        GlobalMapxScale = 1.5;
        GlobalMapxScale = 1.5;
    
        CloudGlobalXscale = 2;
        CloudGlobalYscale = 2;
        CloudGlobalAlpha = 0;   
    }
}
#endregion

#region Переходы c главной

#region Перемещение облаков

if CloudChange = 1  
{   
    CloudLFrontX = lerp(CloudLFrontX,20,0.05);
    CloudLBackX = lerp(CloudLBackX,40,0.05);
    CloudRFrontX = lerp(CloudRFrontX,460,0.05);
    CloudRBackX = lerp(CloudRBackX,440,0.05);
}
    
if CloudChange = 2
 {
    CloudLFrontX = lerp(CloudLFrontX,240,0.03);
    CloudLBackX = lerp(CloudLBackX,240,0.03);
    CloudRFrontX = lerp(CloudRFrontX,240,0.03);
    CloudRBackX = lerp(CloudRBackX,240,0.03);
 }
 
#endregion

if turn = 1
{
    turn_t++;
    if turn_t > 5
    {        
        island1JungleAlpha += 0.05;       
    }
    
    GlobalMapAlpha -= 0.05;
    GlobalMapxScale += 0.05;
    GlobalMapyScale += 0.05;
    CloudLAlpha += 0.1;
    CloudFarAlpha += 0.05;
    
    GlobalMapxPos += 4;
    GlobalMapyPos -= 2;
    
    CloudGlobalAlpha -= 0.05;
    CloudGlobalXscale +=0.02;
    CloudGlobalYscale +=0.02;
    /*
    island1JungleAlpha += 0.05;
    
    
    CloudGlobalAlpha -= 0.025;
    CloudGlobalXscale +=0.02;
    CloudGlobalYscale +=0.02;
    */
    
    if GlobalMapAlpha = 0
    {
        turn_t = 0;
        GlobalMapAlpha = 0;
        CloudLAlpha = 1;
        CloudFarAlpha = 0.9;
        island1JungleAlpha = 1;
       
        GlobalMapxScale = 1.5;
        GlobalMapyScale = 1.5;
        GlobalMapxPos = 240;
        GlobalMapyPos = 135;
        
        
        CloudGlobalAlpha = 0;
        CloudGlobalXscale = 1;
        CloudGlobalYscale = 1;
        
        turn = 0;
        canPress = 1;
    }
}

if turn = 2
{
    turn_t++;
    if turn_t > 5
    {        
        island1DesertAlpha += 0.05;       
    }
    GlobalMapxPos -= 2;
    GlobalMapyPos -= 4;
    
    GlobalMapAlpha -= 0.05;
    GlobalMapxScale += 0.05;
    GlobalMapyScale += 0.05;  
    CloudLAlpha += 0.1;
    CloudFarAlpha +=0.05;
   
    
    CloudGlobalAlpha -= 0.025;
    CloudGlobalXscale +=0.02;
    CloudGlobalYscale +=0.02;
    
    if GlobalMapAlpha = 0
    {
        turn_t = 0;
        CloudLAlpha = 1;
        CloudFarAlpha = 0.9;
        GlobalMapAlpha = 0;
        island1DesertAlpha = 1;
        GlobalMapxScale = 1.5;
        GlobalMapyScale = 1.5;
        
        GlobalMapxPos = 240;
        GlobalMapyPos = 135;
        
        CloudGlobalAlpha = 0;
        CloudGlobalXscale = 1;
        CloudGlobalYscale = 1;
        
        turn = 0;
        canPress = 1;
    }
}

if turn = 3
{
    turn_t++;
    if turn_t > 5
    {        
        island1SnowAlpha += 0.05;       
    }
    GlobalMapxPos -= 10;
    GlobalMapyPos -= 2;
    
    GlobalMapAlpha -= 0.05;
    GlobalMapxScale += 0.05;
    GlobalMapyScale += 0.05;  
    CloudLAlpha += 0.1;
    CloudFarAlpha += 0.05;
    
    CloudGlobalAlpha -= 0.025;
    CloudGlobalXscale +=0.02;
    CloudGlobalYscale +=0.02;
    
    if GlobalMapAlpha = 0
    {
        turn_t = 0;
        CloudLAlpha = 1;
        CloudFarAlpha = 0.9;
        GlobalMapAlpha = 0;
        island1SnowAlpha = 1;
        GlobalMapxScale = 1.5;
        GlobalMapyScale = 1.5;
        
        GlobalMapxPos = 240;
        GlobalMapyPos = 135;
        
        CloudGlobalAlpha = 0;
        CloudGlobalXscale = 1;
        CloudGlobalYscale = 1;
        
        turn = 0;
        canPress = 1;
    }
}

if turn = 4
{
    turn_t++;
    if turn_t > 5
    {        
        island1LavaAlpha += 0.05;       
    }
    GlobalMapxPos += 2;
    GlobalMapyPos += 4;
    
    GlobalMapAlpha -= 0.05;
    GlobalMapxScale += 0.05;
    GlobalMapyScale += 0.05;  
    CloudLAlpha += 0.1;
    CloudFarAlpha += 0.05;
    
    CloudGlobalAlpha -= 0.025;
    CloudGlobalXscale +=0.02;
    CloudGlobalYscale +=0.02;
    
    if GlobalMapAlpha = 0
    {
        turn_t =0;
        CloudLAlpha = 1;
        CloudFarAlpha = 0.9;
        GlobalMapAlpha = 0;
        island1LavaAlpha = 1;
        GlobalMapxScale = 1.5;
        GlobalMapyScale = 1.5;
        
        GlobalMapxPos = 240;
        GlobalMapyPos = 135;
        
        CloudGlobalAlpha = 0;
        CloudGlobalXscale = 1;
        CloudGlobalYscale = 1;
        
        turn = 0;
        canPress = 1;
    }
}

if turn = 5
{
    turn_t++;
    if turn_t > 5
    {        
        island1GraveyardAlpha += 0.05;       
    }
    GlobalMapxPos -= 6;
    GlobalMapyPos += 4;
    
    GlobalMapAlpha -= 0.05;
    GlobalMapxScale += 0.05;
    GlobalMapyScale += 0.05;  
    CloudLAlpha += 0.1;
    CloudFarAlpha += 0.05;
    island1GraveyardAlpha += 0.05;
    
    CloudGlobalAlpha -= 0.025;
    CloudGlobalXscale +=0.02;
    CloudGlobalYscale +=0.02;
    
    if GlobalMapAlpha = 0
    {
        turn_t = 0;
        CloudLAlpha = 1;
        GlobalMapAlpha = 0;
        CloudFarAlpha = 0.9;
        
        island1GraveyardAlpha = 1;
        GlobalMapxScale = 1.5;
        GlobalMapyScale = 1.5;
        
        GlobalMapxPos = 240;
        GlobalMapyPos = 135;
        
        CloudGlobalAlpha = 0;
        CloudGlobalXscale = 1;
        CloudGlobalYscale = 1;
        
        turn = 0;
        canPress = 1;
    }
}

if turn = 6
{
    GlobalMapAlpha += 0.05;
    CloudLAlpha -= 0.05;
    CloudFarAlpha -= 0.025;
    CloudGlobalAlpha += 0.025;

    //GlobalMapAlpha = 0.5;
    GlobalMapxScale -= 0.025;
    GlobalMapyScale -= 0.025;
       
    CloudGlobalXscale -= 0.05;
    CloudGlobalYscale -= 0.05;

    CloudChange = 2;
    
    if GlobalMapAlpha = 1
    {
        CloudChange = 0
        
        CloudLAlpha = 0;
        CloudFarAlpha = 0;
        CloudLFrontX = 240;
        CloudLBackX = 240;
        CloudRFrontX = 240;
        CloudRBackX = 240;
        
        CloudGlobalAlpha = 0.5;
        CloudGlobalXscale = 1;
        CloudGlobalYscale = 1;

        GlobalMapAlpha = 1;
        island1JungleAlpha = 0;
        island1DesertAlpha = 0;
        island1GraveyardAlpha = 0;
        island1LavaAlpha = 0;
        island1SnowAlpha = 0;
        GlobalMapxScale = 1;
        GlobalMapyScale = 1;
        turn = 0;
        canPress = 1;
    }
}

#endregion

#region Выбор цели
if !instance_exists(obj_map_confirm)
{
    switch (island)
    {
        case 0: // Главная
            switch (globalMapCounter)
            {
                case 1: if key_up_press     {globalMapCounter = 4;t_o = 31;fnc_snd_play_over(snd_menu_select)}
                        if key_down_pressed {globalMapCounter = 2;t_o = 31;fnc_snd_play_over(snd_menu_select)}
                        if key_right_press  {globalMapCounter = 3;t_o = 31;fnc_snd_play_over(snd_menu_select)}
                    
                        break;
                case 2: if key_left_press   {globalMapCounter = 1;t_o = 31;fnc_snd_play_over(snd_menu_select)}
                        if key_right_press  {globalMapCounter = 3;t_o = 31;fnc_snd_play_over(snd_menu_select)}
                        if key_up_press     {globalMapCounter = 4;t_o = 31;fnc_snd_play_over(snd_menu_select)}
                        break;
                case 3: if key_up_press     {globalMapCounter = 5;t_o = 31;fnc_snd_play_over(snd_menu_select)}
                        if key_left_press   {globalMapCounter = 1;t_o = 31;fnc_snd_play_over(snd_menu_select)}
                        if key_down_pressed {globalMapCounter = 2;t_o = 31;fnc_snd_play_over(snd_menu_select)}
                        break;
                case 4: if (key_down_pressed || key_left_press)     {globalMapCounter = 1;t_o = 31;fnc_snd_play_over(snd_menu_select)}
                        if key_right_press  {globalMapCounter = 5;t_o = 31;fnc_snd_play_over(snd_menu_select)}
                        break;
                case 5: if key_left_press   {globalMapCounter = 4;t_o = 31;fnc_snd_play_over(snd_menu_select)};
                        if (key_down_pressed || key_right_press)    {globalMapCounter = 3;t_o = 31;fnc_snd_play_over(snd_menu_select)}
                        break;
            }
            break;
        case 1: // Джунгли
            switch (globalMapCounter)
            {
                case 0: if up {globalMapCounter = 2};
                        if right {globalMapCounter = 1};
                        break;
                case 1: if left {globalMapCounter = 0};
                        if up {globalMapCounter = 2};
                        if right {globalMapCounter = 3};
                        break;
                case 2: if right {globalMapCounter = 4};
                        if down {globalMapCounter = 1};
                        if left {globalMapCounter = 0};
                        break;
                case 3: if left {globalMapCounter = 1};
                        if up {globalMapCounter = 4};
                        if down {globalMapCounter = 1};
                        break;
                case 4: if left {globalMapCounter = 2};
                        if down {globalMapCounter = 1};
                        if right {globalMapCounter = 3};
                        break;
            }
            break;
        case 2: // Пустыня
            switch (globalMapCounter)
            {
                case 0: if left {globalMapCounter = 1};  
                        if up {globalMapCounter = 1};    
                        break;
                case 1: if left {globalMapCounter = 2};
                        if right {globalMapCounter = 0};
                        if up {globalMapCounter = 4};
                        if down {globalMapCounter = 0};
                        break;
                case 2: if right {globalMapCounter = 1};
                        if down {globalMapCounter = 3};
                        if left {globalMapCounter = 3};
                        if up {globalMapCounter = 4};
                        break;
                case 3: if right {globalMapCounter = 2};
                        if up {globalMapCounter = 4};
                        break;
                case 4: if left {globalMapCounter = 3};
                        if down {globalMapCounter = 2};
                        if right {globalMapCounter = 1};
                        break;
            }
            break;
        case 3: // Зима
            switch (globalMapCounter)
            {
                case 0: if right {globalMapCounter = 1}; 
                        if up {globalMapCounter = 4}; 
                        break;
                case 1: if left {globalMapCounter = 0};
                        if right {globalMapCounter = 2};
                        if up {globalMapCounter = 4};
                        break;
                case 2: if left {globalMapCounter = 1};
                        if up {globalMapCounter = 3};
                        break;
                case 3: if down {globalMapCounter = 2};
                        if left {globalMapCounter = 4};
                        break;
                case 4: if left {globalMapCounter = 0};
                        if down {globalMapCounter = 1};
                        if right {globalMapCounter = 3};
                        break;
            }
            break;
        case 4: // Лава
            switch (globalMapCounter)
            {
                case 0: if right {globalMapCounter = 2}; 
                        if up {globalMapCounter = 3}; 
                        if down {globalMapCounter = 1}; 
                        break;
                case 1: if left {globalMapCounter = 0};
                        if right {globalMapCounter = 4};
                        if up {globalMapCounter = 2};
                        break;
                case 2: if left {globalMapCounter = 0};
                        if up {globalMapCounter = 3};
                        if down {globalMapCounter = 1};
                        if right {globalMapCounter = 4};
                        break;
                case 3: if down {globalMapCounter = 0};
                        if right {globalMapCounter = 4};
                        break;
                case 4: if left {globalMapCounter = 3};
                        if down {globalMapCounter = 1};                    
                        break;
            }
            break;
        case 5: // Кладбище
            switch (globalMapCounter)
            {
                case 0: if right {globalMapCounter = 1}; 
                        if up {globalMapCounter = 3};  
                        break;
                case 1: if left {globalMapCounter = 0};
                        if right {globalMapCounter = 2};
                        if up {globalMapCounter = 4};
                        if down {globalMapCounter = 2};
                        break;
                case 2: if left {globalMapCounter = 0};
                        if up {globalMapCounter = 4};
                        break;
                case 3: if down {globalMapCounter = 0};
                        if right {globalMapCounter = 4};
                        break;
                case 4: if left {globalMapCounter = 3};
                        if down {globalMapCounter = 1};                    
                        if right {globalMapCounter = 2};                    
                        break;
            }
            break;
    }
}
#endregion