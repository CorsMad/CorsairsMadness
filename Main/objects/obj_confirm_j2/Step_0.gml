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
    fnc_snd_play_over(snd_menu_select);
    index+=move;
    var size = array_length_2d(menu, submenu);
    if index < 0 index = size - 1;
    else if index >=size  index = 0;
}

if movelr!= 0 
{
    fnc_snd_play_over(snd_menu_select);
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
                            fnc_snd_play_over(snd_menu_accept);
                            if global.purch_anch1 = 1 ChoosedItem = 11;
                            break;
                        case 1:
                            fnc_snd_play_over(snd_menu_accept);
                            if global.purch_anch2 = 1 ChoosedItem = 12;
                            break;
                        case 2:
                            fnc_snd_play_over(snd_menu_accept);
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
                        fnc_snd_play_over(snd_menu_accept);
                        submenu = 1;
                        index = 0;
                        dindex = 0;
                        break;
                        
                        
                case 5: 
                    fnc_snd_play_over(snd_menu_accept);
                    global.choosed_item = 0;   
                    global.choosed_item_tier = 0;  
                    instance_destroy();
                    break;
            }
        break;
            
        case 1:
            switch(index)
            {
                case 1:
                    switch(dindex)
                    {
                        case 0:
                            fnc_snd_play_over(snd_menu_accept);
                            if global.purch_dualpistols1 = 1 ChoosedItemBoat = 21;
                            break;
                        case 1:
                            fnc_snd_play_over(snd_menu_accept);
                            if global.purch_dualpistols2 = 1 ChoosedItemBoat = 22;
                            break;
                        case 2:
                            fnc_snd_play_over(snd_menu_accept);
                            if global.purch_dualpistols3 = 1 ChoosedItemBoat = 23;
                            break;
                    }
                    break;
                case 4:
                    #region Выбор Лодки
                        switch(ChoosedItemBoat)
                        {
                            case 21: 
                                fnc_snd_play_over(snd_menu_accept);
                                global.choosed_itemboat = 2;   
                                global.choosed_itemboat_tier = 1;   
                                break;
                            case 22: 
                                fnc_snd_play_over(snd_menu_accept);
                                global.choosed_itemboat = 2;   
                                global.choosed_itemboat_tier = 2;   
                                break;
                            case 23: 
                                fnc_snd_play_over(snd_menu_accept);
                                global.choosed_itemboat = 2;   
                                global.choosed_itemboat_tier = 3;   
                                break;
                        }
                    #endregion
                    fnc_msc_stop_play();
                    global.TargetX = 48;
                    global.TargetY = 112;
                    global.TargetRoom = J2_r1;
                    room_goto(J2FirstLoading);
                    break;
                case 5: 
                    fnc_snd_play_over(snd_menu_accept);
                    submenu = 0;
                    break;
            }
        break;
    }
}

