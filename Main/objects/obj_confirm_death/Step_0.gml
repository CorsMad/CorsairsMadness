    /// @description Insert description here
// You can write your code in this editor
fnc_lng_level_confirm1();
player_input();

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
                case 1: // Бомбы
					switch(dindex)
                    {
                        case 0:
                            fnc_snd_play_over(snd_menu_accept);
                            if global.purch_bomb1 = 1 ChoosedItem = 21;
                            break;
                        case 1:
                            fnc_snd_play_over(snd_menu_accept);
                            if global.purch_bomb2 = 1 ChoosedItem = 22;
                            break;
                        case 2:
                            fnc_snd_play_over(snd_menu_accept);
                            if global.purch_bomb3 = 1 ChoosedItem = 23;
                            break;
                    }
					break;
				case 2: // sparkle
					switch(dindex)
                    {
                        case 0:
                            fnc_snd_play_over(snd_menu_accept);
                            if global.purch_sparkle1 = 1 ChoosedItem = 31;
                            break;
                        case 1:
                            fnc_snd_play_over(snd_menu_accept);
                            if global.purch_sparkle2 = 1 ChoosedItem = 32;
                            break;
                        case 2:
                            fnc_snd_play_over(snd_menu_accept);
                            if global.purch_sparkle3 = 1 ChoosedItem = 33;
                            break;
                    }
					break;
				case 3: // eparrot
					switch(dindex)
                    {
                        case 0:
                            fnc_snd_play_over(snd_menu_accept);
                            if global.purch_eparrot1 = 1 ChoosedItem = 41;
                            break;
                        case 1:
                            fnc_snd_play_over(snd_menu_accept);
                            if global.purch_eparrot2 = 1 ChoosedItem = 42;
                            break;
                        case 2:
                            fnc_snd_play_over(snd_menu_accept);
                            if global.purch_eparrot3 = 1 ChoosedItem = 43;
                            break;
                    }
					break;                  
                case 4: // подтверждение
                    fnc_snd_play_over(snd_menu_accept);
                    #region Выбор предметов
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
                            case 21: 
                                global.choosed_item = 3;   
                                global.choosed_item_tier = 1;   
                                break;
                            case 22: 
                                global.choosed_item = 3;   
                                global.choosed_item_tier = 2;   
                                break;
                            case 23: 
                                global.choosed_item = 3;   
                                global.choosed_item_tier = 3;   
                                break;
                            case 31: 
                                global.choosed_item = 4;   
                                global.choosed_item_tier = 1;   
                                break;
                            case 32: 
                                global.choosed_item = 4;   
                                global.choosed_item_tier = 2;   
                                break;
                            case 33: 
                                global.choosed_item = 4;   
                                global.choosed_item_tier = 3;   
                                break;
                            case 41: 
                                global.choosed_item = 5;   
                                global.choosed_item_tier = 1;   
                                break;
                            case 42: 
                                global.choosed_item = 5;   
                                global.choosed_item_tier = 2;   
                                break;
                            case 43: 
                                global.choosed_item = 5;   
                                global.choosed_item_tier = 3;   
                                break;
                        }
                    #endregion
                        fnc_msc_stop_play();
                        room_goto(DI_introLoad);                   
                        break;                      
                case 5: 
                    fnc_snd_play_over(snd_menu_accept);
                    global.choosed_item = 0;   
                    global.choosed_item_tier = 0; 
                    
                    instance_destroy();
                    break;
            }
            break;
        
    }
}
