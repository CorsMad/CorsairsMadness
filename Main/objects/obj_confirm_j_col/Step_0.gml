/// @description Insert description here
// You can write your code in this editor

player_input();
/*
var key_down = keyboard_check_pressed(vk_down);
var key_up = keyboard_check_pressed(vk_up);
var key_left = keyboard_check_pressed(vk_left);
var key_right = keyboard_check_pressed(vk_right);
var key_press = keyboard_check_pressed(vk_enter) ||keyboard_check_pressed(vk_space);
*/

var move = key_down_pressed - key_up_press;
var movelr = key_right_press - key_left_press;


if move!= 0 
{
    index+=move;
    var size = array_length_2d(menu, submenu);
    if index < 0 index = size - 1;
    else if index >=size  index = 0;
}

if movelr!= 0 
    {
        dindex += movelr;
        if dindex < 0 dindex = 2;
        else if dindex >= 3 dindex = 0;
    }


if key_attack || key_jump_pressed // accept
{
    switch(submenu)
    {
        case 0: // main menu
            switch(index)
            {
                case 0:// ЯКОРЬ
                    switch(dindex)
                    {
                        case 0:
                            if global.purch_anch1 = 1 ChoosedItem = 11;
                            break;
                        case 1:
                            if global.purch_anch2 = 1 ChoosedItem = 12;
                            break;
                        case 2:
                            if global.purch_anch3 = 1 ChoosedItem = 13;
                            break;
                    }
                    break;
                    
                    
                case 4: // подтверждение
                    #region Выбор топоров
                        switch(ChoosedItem)
                        {
                            case 11: 
                                global.choosed_item = 2;   
                                global.choosed_item_tier = 1;   
                                break;
                            case 12: 
                                global.choosed_item = 2;   
                                global.choosed_item_tier = 2;   
                                break;
                            case 13: 
                                global.choosed_item = 2;   
                                global.choosed_item_tier = 3;   
                                break;
                        }
                    #endregion
                        global.TargetX = 48;
                        global.TargetY = 240;
                        global.TargetRoom = EnduranceJungle;
                        room_goto(J1FirstEndurance);
                        break;
                        
                        
                case 5: 
                    global.choosed_item = 0;   
                    global.choosed_item_tier = 0;  
                    instance_destroy();
                    break;
            }
            break;
        
    }
}

