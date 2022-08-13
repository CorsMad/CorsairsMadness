/// @description Insert description here
// You can write your code in this editor
if canPress = 1
{
    player_input();
}

#region Нажатие кнопки
if key_attack_press && island = 0
{
    switch(globalMapCounter)
    {
        case 1: turn = 1;canPress = 0;island = 1;break;
        case 2: turn = 2;canPress = 0;island = 2;break;
        case 3: turn = 3;canPress = 0;island = 3;break;
        case 4: turn = 4;canPress = 0;island = 4;break;
        case 5: turn = 5;canPress = 0;island = 5;break;  
    }
}
if key_dashing && island != 0
{
    turn = 6;
    canPress = 0;
    island = 0;   
}
#endregion

#region Переходы c главной

if turn = 1
{
    GlobalMapAlpha -= 0.05;
    GlobalMapxScale += 0.01;
    GlobalMapyScale += 0.01;
    
    island1JungleAlpha += 0.05;

    
    if GlobalMapAlpha = 0
    {
        GlobalMapAlpha = 0;
        island1JungleAlpha = 1;
        GlobalMapxScale = 1;
        GlobalMapyScale = 1;
        turn = 0;
        canPress = 1;
    }
}

if turn = 2
{
    GlobalMapAlpha -= 0.05;
    GlobalMapxScale += 0.01;
    GlobalMapyScale += 0.01;  
    
    island1DesertAlpha += 0.05;
    
    if GlobalMapAlpha = 0
    {
        GlobalMapAlpha = 0;
        island1DesertAlpha = 1;
        GlobalMapxScale = 1;
        GlobalMapyScale = 1;
        turn = 0;
        canPress = 1;
    }
}

if turn = 3
{
    GlobalMapAlpha -= 0.05;
    GlobalMapxScale += 0.01;
    GlobalMapyScale += 0.01;  
    
    island1SnowAlpha += 0.05;
    
    if GlobalMapAlpha = 0
    {
        GlobalMapAlpha = 0;
        island1SnowAlpha = 1;
        GlobalMapxScale = 1;
        GlobalMapyScale = 1;
        turn = 0;
        canPress = 1;
    }
}

if turn = 4
{
    GlobalMapAlpha -= 0.05;
    GlobalMapxScale += 0.01;
    GlobalMapyScale += 0.01;  
    
    island1LavaAlpha += 0.05;
    
    if GlobalMapAlpha = 0
    {
        GlobalMapAlpha = 0;
        island1LavaAlpha = 1;
        GlobalMapxScale = 1;
        GlobalMapyScale = 1;
        turn = 0;
        canPress = 1;
    }
}

if turn = 5
{
    GlobalMapAlpha -= 0.05;
    GlobalMapxScale += 0.01;
    GlobalMapyScale += 0.01;  
    
    island1GraveyardAlpha += 0.05;
    
    if GlobalMapAlpha = 0
    {
        GlobalMapAlpha = 0;
        island1GraveyardAlpha = 1;
        GlobalMapxScale = 1;
        GlobalMapyScale = 1;
        turn = 0;
        canPress = 1;
    }
}

if turn = 6
{
    GlobalMapAlpha += 0.05;
 
    island1JungleAlpha -= 0.05;
    island1DesertAlpha -= 0.05;
    island1GraveyardAlpha -= 0.05;
    island1SnowAlpha -= 0.05;
    island1LavaAlpha -= 0.05;
    
    if GlobalMapAlpha = 1
    {
        GlobalMapAlpha = 1;
        island1DesertAlpha = 0;
        island1DesertAlpha = 0;
        island1DesertAlpha = 0;
        island1DesertAlpha = 0;
        island1DesertAlpha = 0;
        GlobalMapxScale = 1;
        GlobalMapyScale = 1;
        turn = 0;
        canPress = 1;
    }
}

#endregion



switch (island)
{
    case 0: 
    {
        switch (globalMapCounter)
        {
            case 1: if (key_left_press || key_up_press) {globalMapCounter = 2};
                    if key_right_press {globalMapCounter = 3};
                    break;
            case 2: if key_up_press {globalMapCounter = 4};
                    if key_down_pressed {globalMapCounter = 1};
                    if key_right_press {globalMapCounter = 3};
                    break;
            case 3: if key_up_press {globalMapCounter = 5};
                    if key_left_press {globalMapCounter = 2};
                    if key_down_pressed {globalMapCounter = 1};
                    break;
            case 4: if key_down_pressed {globalMapCounter = 2};
                    if key_right_press {globalMapCounter = 5};
                    break;
            case 5: if key_left_press {globalMapCounter = 4};
                    if key_down_pressed {globalMapCounter = 3};
                    break;
        }
    }
}

#region
// set Alpha BGR

#endregion
