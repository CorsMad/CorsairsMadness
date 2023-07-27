/// @description Insert description here
// You can write your code in this editor
kb_gp_input_check();
player_input()
var move = key_down_pressed - key_up_press;
var movelr = key_right_press - key_left_press;

if !buy_confirm
{
    
if move!= 0 
{
    fnc_snd_play_over(snd_menu_select);
    index+=move;
    var size = array_length_2d(menu, submenu);
    if index < 0 index = size - 1;
    else if index >=size  index = 0;
}

if movelr!= 0 && (submenu = 1 || submenu = 3)
    {
        fnc_snd_play_over(snd_menu_select);
        dindex += movelr;
        if dindex < 0 dindex = 2;
        else if dindex >= 3 dindex = 0;
    }

if key_jump_pressed || key_attack // accept
{
    switch(submenu)
    {
        case 0: // main menu
            switch(index)
            {
                case 0: 
                    fnc_snd_play_over(snd_menu_accept);
                    submenu = 1;
                    index = 0;
                    break;
                case 1: 
                    /*
                    submenu = 2;
                    index = 0;
                    */
                    break;
                case 2:
                    fnc_snd_play_over(snd_menu_accept);
                    submenu = 3;
                    index = 0;
                    break;
                case 3:     
                    fnc_snd_play_over(snd_menu_accept);
                    submenu = 4;
                    index = 0;
                    break;
                case 4: 
                    fnc_snd_play_over(snd_menu_accept);
                    scr_save_progress();
                    instance_destroy();
					if instance_exists(obj_npc_junglev_merch)  instance_create_depth(x,y,-100000,obj_npc_junglev_merch_choose);
					if instance_exists(obj_npc_desertv_merch)  instance_create_depth(x,y,-100000,obj_npc_desertv_merch_choose);
					if instance_exists(obj_npc_shadowv_merch)  instance_create_depth(x,y,-100000,obj_npc_shadowv_merch_choose);
					if instance_exists(obj_npc_lavav_merch)    instance_create_depth(x,y,-100000,obj_npc_lavav_merch_choose);
					if instance_exists(obj_npc_snowv_merch)    instance_create_depth(x,y,-100000,obj_npc_snowv_merch_choose);
                    break;
                    
            }
            break;
        case 1: // Человек
            
            switch(index)
            {
                case 0: // Покупка якорей
                    switch(dindex)
                    {
                        case 0: // 1-й якорь   
                            if (global.purch_anch1 = 0 && global.gold >= 250) {fnc_snd_play_over(snd_menu_accept);buy_confirm = 1;delay = 1;}
                            break;
                        case 1: // 2-й якорь   
                            if (global.purch_anch2 = 0 && global.shop_axe_can_upgrade1 = 1 && global.gold >= 300) {fnc_snd_play_over(snd_menu_accept);buy_confirm = 1;delay = 1;}
                            break;
                        case 2: // 3-й якорь   
                            if (global.purch_anch3 = 0 && global.shop_axe_can_upgrade2 = 1 && global.gold >= 450) {fnc_snd_play_over(snd_menu_accept);buy_confirm = 1;delay = 1;}
                            break;
                    }
                    break;
                case 1: // Покупка Бомб
                    switch(dindex)
                    {
                        case 0: // 1-й якорь   
                            if (global.purch_bomb1 = 0 && global.gold >= 250) {fnc_snd_play_over(snd_menu_accept);buy_confirm = 1;delay = 1;}
                            break;
                        case 1: // 2-й якорь   
                            if (global.purch_bomb2 = 0 && global.shop_bomb_can_upgrade1 = 1 && global.gold >= 300) {fnc_snd_play_over(snd_menu_accept);buy_confirm = 1;delay = 1;}
                            break;
                        case 2: // 3-й якорь   
                            if (global.purch_bomb3 = 0 && global.shop_bomb_can_upgrade2 = 1 && global.gold >= 450) {fnc_snd_play_over(snd_menu_accept);buy_confirm = 1;delay = 1;}
                            break;
                    }
                    break;
                case 2: // Покупка sparkle
                    switch(dindex)
                    {
                        case 0: // 1-й якорь   
                            if (global.purch_sparkle1 = 0 && global.gold >= 250) {fnc_snd_play_over(snd_menu_accept);buy_confirm = 1;delay = 1;}
                            break;
                        case 1: // 2-й якорь   
                            if (global.purch_sparkle2 = 0 && global.shop_sparkle_can_upgrade1 = 1 && global.gold >= 300) {fnc_snd_play_over(snd_menu_accept);buy_confirm = 1;delay = 1;}
                            break;
                        case 2: // 3-й якорь   
                            if (global.purch_sparkle3 = 0 && global.shop_sparkle_can_upgrade2 = 1 && global.gold >= 450) {fnc_snd_play_over(snd_menu_accept);buy_confirm = 1;delay = 1;}
                            break;
                    }
                    break;
                case 3: // Покупка попугая
                    switch(dindex)
                    {
                        case 0: // 1-й якорь   
                            if (global.purch_eparrot1 = 0 && global.gold >= 250) {fnc_snd_play_over(snd_menu_accept);buy_confirm = 1;delay = 1;}
                            break;
                        case 1: // 2-й якорь   
                            if (global.purch_eparrot2 = 0 && global.shop_eparrot_can_upgrade1 = 1 && global.gold >= 300) {fnc_snd_play_over(snd_menu_accept);buy_confirm = 1;delay = 1;}
                            break;
                        case 2: // 3-й якорь   
                            if (global.purch_eparrot3 = 0 && global.shop_eparrot_can_upgrade2 = 1 && global.gold >= 450) {fnc_snd_play_over(snd_menu_accept);buy_confirm = 1;delay = 1;}
                            break;
                    }
                    break;
                
                case 4:
                    fnc_snd_play_over(snd_menu_accept);
                    submenu = 0;
                    index = 0;
                    dindex = 0;
                    break;
            }
            break;
        case 2: // Одержимый
            switch(index)
            {
                case 4:
                    fnc_snd_play_over(snd_menu_accept);
                    submenu = 0;
                    index = 1;
                    dindex = 0;
                    break;
            }
            break;
        case 3: // Лодка
            switch(index)
            {
                case 1:
                    switch(dindex)
                    {
                        case 0: // 1-й якорь   
                            if (global.purch_dualpistols1 = 0 && global.gold >= 250) {fnc_snd_play_over(snd_menu_accept);buy_confirm = 1;delay = 1;}
                            break;
                        case 1: // 2-й якорь   
                            if (global.purch_dualpistols2 = 0 && global.shop_dualpistols_can_upgrade1 = 1 && global.gold >= 300) {fnc_snd_play_over(snd_menu_accept);buy_confirm = 1;delay = 1;}
                            break;
                        case 2: // 3-й якорь   
                            if (global.purch_dualpistols3 = 0 && global.shop_dualpistols_can_upgrade2 = 1 && global.gold >= 450) {fnc_snd_play_over(snd_menu_accept);buy_confirm = 1;delay = 1;}
                            break;
                    }
                    break;
                    
                    
                case 4:
                    fnc_snd_play_over(snd_menu_accept);
                    submenu = 0;
                    index = 2;
                    dindex = 0;
                    break;
            }
            break;
        case 4: // jade
            switch(index)
            {
                case 0:
                    if global.secrets >= 3 {fnc_snd_play_over(snd_menu_accept);buy_confirm = 1;delay = 1;}
                    break;
                case 1:
                    if global.secrets >= 3 {fnc_snd_play_over(snd_menu_accept);buy_confirm = 1;delay = 1;}
                    break;
                case 2:
                    fnc_snd_play_over(snd_menu_accept);
                    submenu = 0;
                    index = 3;
                    dindex = 0;
                    break;
            }
            break;
    }
}

}
if delay!= 0 delay -= 0.1;

if buy_confirm
{
    if key_left_press {fnc_snd_play_over(snd_menu_select);buy_confirm_yesno = 0;}
    if key_right_press {fnc_snd_play_over(snd_menu_select);buy_confirm_yesno = 1;}
    
    if (key_jump || key_attack_press) && delay = 0
    {
        switch(buy_confirm_yesno)
        {
            case 0: 
                switch(submenu)
                {
                    case 1: 
					switch(index)
					{
						case 0: // ЯКОРЬ
							switch(dindex)
	                        {
	                            case 0: // Покупка якорь 1 ур
	                                if global.purch_anch1 = 0 && global.gold >= 250
	                                {
	                                    fnc_snd_play_over(snd_menu_accept);
	                                    buy_confirm = 0;
	                                    global.purch_anch1 = 1;
	                                    global.shop_axe_can_upgrade1 = 1;
	                                    global.gold -= 250;
	                                }
	                                break;
	                            case 1: // Покупка якорь 2 ур
	                                if global.purch_anch2 = 0 && global.gold >= 300 && global.shop_axe_can_upgrade1 = 1
	                                {
	                                    fnc_snd_play_over(snd_menu_accept);
	                                    buy_confirm = 0;
	                                    global.purch_anch2 = 1;
	                                    global.shop_axe_can_upgrade2 = 1;
	                                    global.gold -= 300;
	                                }
	                                break;
	                            case 2: // Покупка якорь 3 ур
	                                if global.purch_anch3 = 0 && global.gold >= 450 && global.shop_axe_can_upgrade2 = 1
	                                {
	                                    fnc_snd_play_over(snd_menu_accept);
	                                    buy_confirm = 0;
	                                    global.purch_anch3 = 1;
	                                    global.gold -= 450;
	                                }
	                                break;
	                        }
							break;
						case 1: // bomb
							switch(dindex)
	                        {
	                            case 0: // Покупка Бомбы 1 ур
	                                if global.purch_bomb1 = 0 && global.gold >= 250
	                                {
	                                    fnc_snd_play_over(snd_menu_accept);
	                                    buy_confirm = 0;
	                                    global.purch_bomb1 = 1;
	                                    global.shop_bomb_can_upgrade1 = 1;
	                                    global.gold -= 250;
	                                }
	                                break;
	                            case 1: // Покупка Бомбы 2 ур
	                                if global.purch_bomb2 = 0 && global.gold >= 300 && global.shop_bomb_can_upgrade1 = 1
	                                {
	                                    fnc_snd_play_over(snd_menu_accept);
	                                    buy_confirm = 0;
	                                    global.purch_bomb2 = 1;
	                                    global.shop_bomb_can_upgrade2 = 1;
	                                    global.gold -= 300;
	                                }
	                                break;
	                            case 2: // Покупка Бомбы 3 ур
	                                if global.purch_bomb3 = 0 && global.gold >= 450 && global.shop_bomb_can_upgrade2 = 1
	                                {
	                                    fnc_snd_play_over(snd_menu_accept);
	                                    buy_confirm = 0;
	                                    global.purch_bomb3 = 1;
	                                    global.gold -= 450;
	                                }
	                                break;
	                        }
							break;
						case 2: // sparkle
							switch(dindex)
	                        {
	                            case 0: // Покупка sparkle 1 ур
	                                if global.purch_sparkle1 = 0 && global.gold >= 250
	                                {
	                                    fnc_snd_play_over(snd_menu_accept);
	                                    buy_confirm = 0;
	                                    global.purch_sparkle1 = 1;
	                                    global.shop_sparkle_can_upgrade1 = 1;
	                                    global.gold -= 250;
	                                }
	                                break;
	                            case 1: // Покупка sparkle 2 ур
	                                if global.purch_sparkle2 = 0 && global.gold >= 300 && global.shop_sparkle_can_upgrade1 = 1
	                                {
	                                    fnc_snd_play_over(snd_menu_accept);
	                                    buy_confirm = 0;
	                                    global.purch_sparkle2 = 1;
	                                    global.shop_sparkle_can_upgrade2 = 1;
	                                    global.gold -= 300;
	                                }
	                                break;
	                            case 2: // Покупка sparkle 3 ур
	                                if global.purch_sparkle3 = 0 && global.gold >= 450 && global.shop_sparkle_can_upgrade2 = 1
	                                {
	                                    fnc_snd_play_over(snd_menu_accept);
	                                    buy_confirm = 0;
	                                    global.purch_sparkle3 = 1;
	                                    global.gold -= 450;
	                                }
	                                break;
	                        }
							break;
						case 3: // EPARROT
							switch(dindex)
	                        {
	                            case 0: // Покупка EPARROT 1 ур
	                                if global.purch_eparrot1 = 0 && global.gold >= 250
	                                {
	                                    fnc_snd_play_over(snd_menu_accept);
	                                    buy_confirm = 0;
	                                    global.purch_eparrot1 = 1;
	                                    global.shop_eparrot_can_upgrade1 = 1;
	                                    global.gold -= 250;
	                                }
	                                break;
	                            case 1: // Покупка EPARROT 2 ур
	                                if global.purch_eparrot2 = 0 && global.gold >= 300 && global.shop_eparrot_can_upgrade1 = 1
	                                {
	                                    fnc_snd_play_over(snd_menu_accept);
	                                    buy_confirm = 0;
	                                    global.purch_eparrot2 = 1;
	                                    global.shop_eparrot_can_upgrade2 = 1;
	                                    global.gold -= 300;
	                                }
	                                break;
	                            case 2: // Покупка EPARROT 3 ур
	                                if global.purch_eparrot3 = 0 && global.gold >= 450 && global.shop_eparrot_can_upgrade2 = 1
	                                {
	                                    fnc_snd_play_over(snd_menu_accept);
	                                    buy_confirm = 0;
	                                    global.purch_eparrot3 = 1;
	                                    global.gold -= 450;
	                                }
	                                break;
	                        }
							break;
							
					}
                        
                    break;  
                    
                    case 3: 
                        switch(dindex)
                        {
                            case 0: // Покупка дуал пистолеты 1 ур
                                if global.purch_dualpistols1 = 0 && global.gold >= 250
                                {
                                    fnc_snd_play_over(snd_menu_accept);
                                    buy_confirm = 0;
                                    global.purch_dualpistols1 = 1;
                                    global.shop_dualpistols_can_upgrade1 = 1;
                                    global.gold -= 250;
                                }
                                break;
                            case 1: // Покупка дуал пистолеты 2 ур
                                if global.purch_dualpistols2 = 0 && global.gold >= 300 && global.shop_dualpistols_can_upgrade1 = 1
                                {
                                    fnc_snd_play_over(snd_menu_accept);
                                    buy_confirm = 0;
                                    global.purch_dualpistols2 = 1;
                                    global.shop_dualpistols_can_upgrade2 = 1;
                                    global.gold -= 300;
                                }
                                break;
                            case 2: // Покупка дуал пистолетыь 3 ур
                                if global.purch_dualpistols3 = 0 && global.gold >= 450 && global.shop_dualpistols_can_upgrade2 = 1
                                {
                                    fnc_snd_play_over(snd_menu_accept);
                                    buy_confirm = 0;
                                    global.purch_dualpistols3 = 1;
                                    global.gold -= 450;
                                }
                                break;
                        }
                    break;
                    
                    case 4: 
                        switch(index)
                        {
                            case 0: // Обмен монет на ХП
                                if global.secrets >=3 
                                {
                                    fnc_snd_play_over(snd_menu_accept);
                                    buy_confirm = 0;
                                    global.secrets -= 3;
                                    global.hp_max +=1;
                                    global.hp = global.hp_max;
                                }
                                break;
                            case 1: // Обмен моент на ману
                                if global.secrets >=3 
                                {
                                    fnc_snd_play_over(snd_menu_accept);
                                    buy_confirm = 0;
                                    global.secrets -= 3;
                                    global.mana_max +=1;
                                    global.mana = global.mana_max;
                                }
                                break;
                        }
                    break;
                        
                }
                
                break;
            case 1:
                fnc_snd_play_over(snd_menu_accept);
                buy_confirm_yesno = 0;
                buy_confirm = 0;
                break;
        }
    }
}


#region ЦЕНЫ


switch(submenu)
{
    case 1: 
        switch(index)
        {
            case 0: 
                switch(dindex)
                {
                    case 0:
                        if global.purch_anch1 = 0 itemprice = 250; else itemprice = 0;                      
                        break;
                    case 1:
                        if global.purch_anch2 = 0 itemprice = 300; else itemprice = 0;
                        break;
                    case 2:
                        if global.purch_anch3 = 0 itemprice = 450; else itemprice = 0;
                        break;  
                }
                break;
                default :
                itemprice = 0;             
        }     
        break;
        
    case 3: 
        switch(index)
        {
            case 1: 
                switch(dindex)
                {
                    case 0:
                        if global.purch_dualpistols1 = 0 itemprice = 250; else itemprice = 0;                      
                        break;
                    case 1:
                        if global.purch_dualpistols2 = 0 itemprice = 300; else itemprice = 0;
                        break;
                    case 2:
                        if global.purch_dualpistols3 = 0 itemprice = 450; else itemprice = 0;
                        break;   
                }
                break;
                default :
                itemprice = 0;             
        }  
        break;
}

#endregion

#region Подтверждения покупок


#endregion

