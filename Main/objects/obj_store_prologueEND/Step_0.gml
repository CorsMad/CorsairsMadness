/// @description Insert description here
// You can write your code in this editor
kb_gp_input_check();
player_input()
fnc_lng_store();
price_hp = global.hp_max - global.hp_add;
var move = key_down_pressed - key_up_press;
var movelr = key_right_press - key_left_press;

if !buy_confirm
{
    
if move!= 0 
{
    fnc_snd_play_over(snd_menu_select);
    index+=move;
    var size = array_length(menu);
    //var size = array_length_2d(menu, submenu);
    if index < 0 index = size - 1;
    else if index >=size  index = 0;
}

if movelr!= 0 && (submenu = 1 || submenu = 2 || submenu = 3 || submenu = 4)
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
                    //fnc_snd_play_over(snd_menu_accept);
                    //submenu = 2;
                    //index = 0;
                    break;
                case 2:
                    //fnc_snd_play_over(snd_menu_accept);
                    //submenu = 3;
                    //index = 0;
                    break;
                case 3:     
                    fnc_snd_play_over(snd_menu_accept);
                    submenu = 4;
                    index = 0;
                    break;
                case 4: 
                    fnc_snd_play_over(snd_menu_accept);
                    obj_Player.isDead = 2.1;
                    obj_store_di.talk = 0;
                    instance_destroy();
                    
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
                            if (global.purch_anch2 = 0 && global.shop_axe_can_upgrade1 = 1 && global.gold >= 500 && (global.completedJungle + global.completedDesert + global.completedSnow + global.completedShadow + global.completedLava>= 1)) {fnc_snd_play_over(snd_menu_accept);buy_confirm = 1;delay = 1;}
                            break;
                        case 2: // 3-й якорь   
                            if (global.purch_anch3 = 0 && global.shop_axe_can_upgrade2 = 1 && global.gold >= 750 && (global.completedJungle + global.completedDesert + global.completedSnow + global.completedShadow + global.completedLava >= 2)) {fnc_snd_play_over(snd_menu_accept);buy_confirm = 1;delay = 1;}
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
                            if (global.purch_bomb2 = 0 && global.shop_bomb_can_upgrade1 = 1 && global.gold >= 500 && (global.completedJungle + global.completedDesert + global.completedSnow + global.completedShadow + global.completedLava>= 1)) {fnc_snd_play_over(snd_menu_accept);buy_confirm = 1;delay = 1;}
                            break;
                        case 2: // 3-й якорь   
                            if (global.purch_bomb3 = 0 && global.shop_bomb_can_upgrade2 = 1 && global.gold >= 750 && (global.completedJungle + global.completedDesert + global.completedSnow + global.completedShadow + global.completedLava>= 2)) {fnc_snd_play_over(snd_menu_accept);buy_confirm = 1;delay = 1;}
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
                            if (global.purch_sparkle2 = 0 && global.shop_sparkle_can_upgrade1 = 1 && global.gold >= 500 && (global.completedJungle + global.completedDesert + global.completedSnow + global.completedShadow + global.completedLava>= 1)) {fnc_snd_play_over(snd_menu_accept);buy_confirm = 1;delay = 1;}
                            break;
                        case 2: // 3-й якорь   
                            if (global.purch_sparkle3 = 0 && global.shop_sparkle_can_upgrade2 = 1 && global.gold >= 750 && (global.completedJungle + global.completedDesert + global.completedSnow + global.completedShadow + global.completedLava>= 2)) {fnc_snd_play_over(snd_menu_accept);buy_confirm = 1;delay = 1;}
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
                            if (global.purch_eparrot2 = 0 && global.shop_eparrot_can_upgrade1 = 1 && global.gold >= 500 && (global.completedJungle + global.completedDesert + global.completedSnow + global.completedShadow + global.completedLava>= 1)) {fnc_snd_play_over(snd_menu_accept);buy_confirm = 1;delay = 1;}
                            break;
                        case 2: // 3-й якорь   
                            if (global.purch_eparrot3 = 0 && global.shop_eparrot_can_upgrade2 = 1 && global.gold >= 750 && (global.completedJungle + global.completedDesert + global.completedSnow + global.completedShadow + global.completedLava>= 2)) {fnc_snd_play_over(snd_menu_accept);buy_confirm = 1;delay = 1;}
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
                case 0: // horizontal1
                    if (global.superattack1 = 0 && global.darkessence >= 1000) {fnc_snd_play_over(snd_menu_accept);buy_confirm = 1;delay = 1;}
                    break;
                case 1: // horizontal2
                    if (global.superattack1 = 1 && global.darkessence >= 2000) {fnc_snd_play_over(snd_menu_accept);buy_confirm = 1;delay = 1;}
                    break;
                case 2: // aoe
                    if (global.superattack2 = 0 && global.darkessence >= 2000) {fnc_snd_play_over(snd_menu_accept);buy_confirm = 1;delay = 1;}
                    break;
                case 3: // missle
                    if (global.superattack3 = 0 && global.darkessence >= 2000) {fnc_snd_play_over(snd_menu_accept);buy_confirm = 1;delay = 1;}
                    break;
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
                case 0:
                    switch(dindex)
                    {
                        case 0: // 1-й якорь   
                            if (global.purch_rapidfire1 = 0 && global.gold >= 250) {fnc_snd_play_over(snd_menu_accept);buy_confirm = 1;delay = 1;}
                            break;
                        case 1: // 2-й якорь   
                            if (global.purch_rapidfire2 = 0 && global.shop_rapidfire_can_upgrade1 = 1 && global.gold >= 500 && (global.completedJungle + global.completedDesert + global.completedSnow + global.completedShadow + global.completedLava>= 1)) {fnc_snd_play_over(snd_menu_accept);buy_confirm = 1;delay = 1;}
                            break;
                        case 2: // 3-й якорь   
                            if (global.purch_rapidfire3 = 0 && global.shop_rapidfire_can_upgrade2 = 1 && global.gold >= 750 && (global.completedJungle + global.completedDesert + global.completedSnow + global.completedShadow + global.completedLava>= 2)) {fnc_snd_play_over(snd_menu_accept);buy_confirm = 1;delay = 1;}
                            break;
                    }
                    break;
                case 1:
                    switch(dindex)
                    {
                        case 0: // 1-й якорь   
                            if (global.purch_dualpistols1 = 0 && global.gold >= 250) {fnc_snd_play_over(snd_menu_accept);buy_confirm = 1;delay = 1;}
                            break;
                        case 1: // 2-й якорь   
                            if (global.purch_dualpistols2 = 0 && global.shop_dualpistols_can_upgrade1 = 1 && global.gold >= 500 && (global.completedJungle + global.completedDesert + global.completedSnow + global.completedShadow + global.completedLava>= 1)) {fnc_snd_play_over(snd_menu_accept);buy_confirm = 1;delay = 1;}
                            break;
                        case 2: // 3-й якорь   
                            if (global.purch_dualpistols3 = 0 && global.shop_dualpistols_can_upgrade2 = 1 && global.gold >= 750 && (global.completedJungle + global.completedDesert + global.completedSnow + global.completedShadow + global.completedLava>= 2)) {fnc_snd_play_over(snd_menu_accept);buy_confirm = 1;delay = 1;}
                            break;
                    }
                    break;
                case 2:
                    switch(dindex)
                    {
                        case 0: // 1-й якорь   
                            if (global.purch_blunderbuss1 = 0 && global.gold >= 250) {fnc_snd_play_over(snd_menu_accept);buy_confirm = 1;delay = 1;}
                            break;
                        case 1: // 2-й якорь   
                            if (global.purch_blunderbuss2 = 0 && global.shop_blunderbuss_can_upgrade1 = 1 && global.gold >= 500 && (global.completedJungle + global.completedDesert + global.completedSnow + global.completedShadow + global.completedLava>= 1)) {fnc_snd_play_over(snd_menu_accept);buy_confirm = 1;delay = 1;}
                            break;
                        case 2: // 3-й якорь   
                            if (global.purch_blunderbuss3 = 0 && global.shop_blunderbuss_can_upgrade2 = 1 && global.gold >= 750 && (global.completedJungle + global.completedDesert + global.completedSnow + global.completedShadow + global.completedLava>= 2)) {fnc_snd_play_over(snd_menu_accept);buy_confirm = 1;delay = 1;}
                            break;
                    }
                    break;    
                case 3:
                    switch(dindex)
                    {
                        case 0: // 1-й якорь   
                            if (global.purch_parrotcage1 = 0 && global.gold >= 250) {fnc_snd_play_over(snd_menu_accept);buy_confirm = 1;delay = 1;}
                            break;
                        case 1: // 2-й якорь   
                            if (global.purch_parrotcage2 = 0 && global.shop_parrotcage_can_upgrade1 = 1 && global.gold >= 500 && (global.completedJungle + global.completedDesert + global.completedSnow + global.completedShadow + global.completedLava>= 1)) {fnc_snd_play_over(snd_menu_accept);buy_confirm = 1;delay = 1;}
                            break;
                        case 2: // 3-й якорь   
                            if (global.purch_parrotcage3 = 0 && global.shop_parrotcage_can_upgrade2 = 1 && global.gold >= 750 && (global.completedJungle + global.completedDesert + global.completedSnow + global.completedShadow + global.completedLava>= 2)) {fnc_snd_play_over(snd_menu_accept);buy_confirm = 1;delay = 1;}
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
                    if global.secrets >= price_hp {fnc_snd_play_over(snd_menu_accept);buy_confirm = 1;delay = 1;}
                    break;
                case 1:
                    if global.secrets >= 3 {fnc_snd_play_over(snd_menu_accept);buy_confirm = 1;delay = 1;}
                    break;
                case 2:
                    if global.hp_max > 5+global.hp_add {fnc_snd_play_over(snd_menu_accept);buy_confirm = 1;delay = 1;}
                    break;
                case 3:
                    if global.mana_max > 3+global.mana_add {fnc_snd_play_over(snd_menu_accept);buy_confirm = 1;delay = 1;}
                    break;
                case 4:
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
										buy_confirm_yesno = 1;
	                                    global.purch_anch1 = 1;
	                                    global.shop_axe_can_upgrade1 = 1;
	                                    global.gold -= 250;
                                        fnc_achiev_get("ACH28");
										fnc_achiev_all();
	                                }
	                                break;
	                            case 1: // Покупка якорь 2 ур
	                                if global.purch_anch2 = 0 && global.gold >= 500 && global.shop_axe_can_upgrade1 = 1 
	                                {
	                                    fnc_snd_play_over(snd_menu_accept);
	                                    buy_confirm = 0;
										buy_confirm_yesno = 1;
	                                    global.purch_anch2 = 1;
	                                    global.shop_axe_can_upgrade2 = 1;
	                                    global.gold -= 500;
	                                }
	                                break;
	                            case 2: // Покупка якорь 3 ур
	                                if global.purch_anch3 = 0 && global.gold >= 1000 && global.shop_axe_can_upgrade2 = 1 
	                                {
	                                    fnc_snd_play_over(snd_menu_accept);
	                                    buy_confirm = 0;
										buy_confirm_yesno = 1;
	                                    global.purch_anch3 = 1;
	                                    global.gold -= 1000;
                                        fnc_achiev_store_human();
                                        fnc_achiev_store_all();
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
										buy_confirm_yesno = 1;
	                                    global.purch_bomb1 = 1;
	                                    global.shop_bomb_can_upgrade1 = 1;
	                                    global.gold -= 250;
                                        fnc_achiev_get("ACH28");
										fnc_achiev_all();
	                                }
	                                break;
	                            case 1: // Покупка Бомбы 2 ур
	                                if global.purch_bomb2 = 0 && global.gold >= 500 && global.shop_bomb_can_upgrade1 = 1
	                                {
	                                    fnc_snd_play_over(snd_menu_accept);
	                                    buy_confirm = 0;
										buy_confirm_yesno = 1;
	                                    global.purch_bomb2 = 1;
	                                    global.shop_bomb_can_upgrade2 = 1;
	                                    global.gold -= 500;
	                                }
	                                break;
	                            case 2: // Покупка Бомбы 3 ур
	                                if global.purch_bomb3 = 0 && global.gold >= 1000 && global.shop_bomb_can_upgrade2 = 1
	                                {
	                                    fnc_snd_play_over(snd_menu_accept);
	                                    buy_confirm = 0;
										buy_confirm_yesno = 1;
	                                    global.purch_bomb3 = 1;
	                                    global.gold -= 1000;
                                        fnc_achiev_store_human();
                                        fnc_achiev_store_all();
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
										buy_confirm_yesno = 1;
	                                    global.purch_sparkle1 = 1;
	                                    global.shop_sparkle_can_upgrade1 = 1;
	                                    global.gold -= 250;
                                        fnc_achiev_get("ACH28");
										fnc_achiev_all();
	                                }
	                                break;
	                            case 1: // Покупка sparkle 2 ур
	                                if global.purch_sparkle2 = 0 && global.gold >= 500 && global.shop_sparkle_can_upgrade1 = 1
	                                {
	                                    fnc_snd_play_over(snd_menu_accept);
	                                    buy_confirm = 0;
										buy_confirm_yesno = 1;
	                                    global.purch_sparkle2 = 1;
	                                    global.shop_sparkle_can_upgrade2 = 1;
	                                    global.gold -= 500;
	                                }
	                                break;
	                            case 2: // Покупка sparkle 3 ур
	                                if global.purch_sparkle3 = 0 && global.gold >= 1000 && global.shop_sparkle_can_upgrade2 = 1
	                                {
	                                    fnc_snd_play_over(snd_menu_accept);
	                                    buy_confirm = 0;
										buy_confirm_yesno = 1;
	                                    global.purch_sparkle3 = 1;
	                                    global.gold -= 1000;
                                        fnc_achiev_store_human();
                                        fnc_achiev_store_all();
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
										buy_confirm_yesno = 1;
	                                    global.purch_eparrot1 = 1;
	                                    global.shop_eparrot_can_upgrade1 = 1;
	                                    global.gold -= 250;
                                        fnc_achiev_get("ACH28");
										fnc_achiev_all();
	                                }
	                                break;
	                            case 1: // Покупка EPARROT 2 ур
	                                if global.purch_eparrot2 = 0 && global.gold >= 500 && global.shop_eparrot_can_upgrade1 = 1
	                                {
	                                    fnc_snd_play_over(snd_menu_accept);
	                                    buy_confirm = 0;
										buy_confirm_yesno = 1;
	                                    global.purch_eparrot2 = 1;
	                                    global.shop_eparrot_can_upgrade2 = 1;
	                                    global.gold -= 500;
	                                }
	                                break;
	                            case 2: // Покупка EPARROT 3 ур
	                                if global.purch_eparrot3 = 0 && global.gold >= 1000 && global.shop_eparrot_can_upgrade2 = 1
	                                {
	                                    fnc_snd_play_over(snd_menu_accept);
	                                    buy_confirm = 0;
										buy_confirm_yesno = 1;
	                                    global.purch_eparrot3 = 1;
	                                    global.gold -= 1000;
                                        fnc_achiev_store_human();
                                        fnc_achiev_store_all();
	                                }
	                                break;
	                        }
							break;
							
					}
                        
                    break;  
                    case 2:
                    switch(index){
                        case 0: // Покупка супер гориз1
                            if global.superattack1 = 0 && global.darkessence >=1000
                            {
                                fnc_snd_play_over(snd_menu_accept);
    	                        buy_confirm = 0;
    	                        global.superattack1 = 1;
    	                        global.darkessence -= 1000;
                            }
                            break;
                        case 1: // Покупка супер гориз2
                            if global.superattack1 = 1 && global.darkessence >=2000
                            {
                                fnc_snd_play_over(snd_menu_accept);
    	                        buy_confirm = 0;
    	                        global.superattack1 = 2;
    	                        global.darkessence -= 2000;
                            }
                            break;
                        case 2: // Покупка супер aoe
                            if global.superattack2 = 0 && global.darkessence >=2000
                            {
                                fnc_snd_play_over(snd_menu_accept);
    	                        buy_confirm = 0;
    	                        global.superattack2 = 1;
    	                        global.darkessence -= 2000;
                            }
                            break;
                        case 3: // Покупка супер ракеты
                            if global.superattack3 = 0 && global.darkessence >=2000
                            {
                                fnc_snd_play_over(snd_menu_accept);
    	                        buy_confirm = 0;
    	                        global.superattack3 = 1;
    	                        global.darkessence -= 2000;
                            }
                            break;
                    }
                    break;
                    case 3: 
                    switch(index)
                    {
                        case 0: // Rapidfire
                            switch(dindex)
                            {
                                case 0:
	                                if global.purch_rapidfire1 = 0 && global.gold >= 250
	                                {
	                                    fnc_snd_play_over(snd_menu_accept);
	                                    buy_confirm = 0;
	                                    global.purch_rapidfire1 = 1;
	                                    global.shop_rapidfire_can_upgrade1 = 1;
	                                    global.gold -= 250;
	                                }
                                    break;
	                            case 1: // Покупка якорь 2 ур
	                                if global.purch_rapidfire2 = 0 && global.gold >= 500 && global.shop_rapidfire_can_upgrade1 = 1
	                                {
	                                    fnc_snd_play_over(snd_menu_accept);
	                                    buy_confirm = 0;
	                                    global.purch_rapidfire2 = 1;
	                                    global.shop_rapidfire_can_upgrade2 = 1;
	                                    global.gold -= 500;
	                                }
	                                break;
	                            case 2: // Покупка якорь 3 ур
	                                if global.purch_rapidfire3 = 0 && global.gold >= 750 && global.shop_rapidfire_can_upgrade2 = 1
	                                {
	                                    fnc_snd_play_over(snd_menu_accept);
	                                    buy_confirm = 0;
	                                    global.purch_rapidfire3 = 1;
	                                    global.gold -= 750;
	                                }
	                                break;
                            }
                            break;
                        case 1: // Doublepistol
                            switch(dindex)
                            {
                                case 0:
	                                if global.purch_dualpistols1 = 0 && global.gold >= 250
	                                {
	                                    fnc_snd_play_over(snd_menu_accept);
	                                    buy_confirm = 0;
	                                    global.purch_dualpistols1 = 1;
	                                    global.shop_dualpistols_can_upgrade1 = 1;
	                                    global.gold -= 250;
	                                }
                                    break;
	                            case 1: // Покупка якорь 2 ур
	                                if global.purch_dualpistols2 = 0 && global.gold >= 500 && global.shop_dualpistols_can_upgrade1 = 1
	                                {
	                                    fnc_snd_play_over(snd_menu_accept);
	                                    buy_confirm = 0;
	                                    global.purch_dualpistols2 = 1;
	                                    global.shop_dualpistols_can_upgrade2 = 1;
	                                    global.gold -= 500;
	                                }
	                                break;
	                            case 2: // Покупка якорь 3 ур
	                                if global.purch_dualpistols3 = 0 && global.gold >= 750 && global.shop_dualpistols_can_upgrade2 = 1
	                                {
	                                    fnc_snd_play_over(snd_menu_accept);
	                                    buy_confirm = 0;
	                                    global.purch_dualpistols3 = 1;
	                                    global.gold -= 750;
	                                }
	                                break;
                            }
                            break;
                        case 2: // blunderbuss
                            switch(dindex)
                            {
                                case 0:
	                                if global.purch_blunderbuss1 = 0 && global.gold >= 250
	                                {
	                                    fnc_snd_play_over(snd_menu_accept);
	                                    buy_confirm = 0;
	                                    global.purch_blunderbuss1 = 1;
	                                    global.shop_blunderbuss_can_upgrade1 = 1;
	                                    global.gold -= 250;
	                                }
                                    break;
	                            case 1: // Покупка якорь 2 ур
	                                if global.purch_blunderbuss2 = 0 && global.gold >= 500 && global.shop_blunderbuss_can_upgrade1 = 1
	                                {
	                                    fnc_snd_play_over(snd_menu_accept);
	                                    buy_confirm = 0;
	                                    global.purch_blunderbuss2 = 1;
	                                    global.shop_blunderbuss_can_upgrade2 = 1;
	                                    global.gold -= 500;
	                                }
	                                break;
	                            case 2: // Покупка якорь 3 ур
	                                if global.purch_blunderbuss3 = 0 && global.gold >= 750 && global.shop_blunderbuss_can_upgrade2 = 1
	                                {
	                                    fnc_snd_play_over(snd_menu_accept);
	                                    buy_confirm = 0;
	                                    global.purch_blunderbuss3 = 1;
	                                    global.gold -= 750;
	                                }
	                                break;
                            }
                            break;
                        case 3: // parrotcage
                            switch(dindex)
                            {
                                case 0:
	                                if global.purch_parrotcage1 = 0 && global.gold >= 250
	                                {
	                                    fnc_snd_play_over(snd_menu_accept);
	                                    buy_confirm = 0;
	                                    global.purch_parrotcage1 = 1;
	                                    global.shop_parrotcage_can_upgrade1 = 1;
	                                    global.gold -= 250;
	                                }
                                    break;
	                            case 1: // Покупка якорь 2 ур
	                                if global.purch_parrotcage2 = 0 && global.gold >= 500 && global.shop_parrotcage_can_upgrade1 = 1
	                                {
	                                    fnc_snd_play_over(snd_menu_accept);
	                                    buy_confirm = 0;
	                                    global.purch_parrotcage2 = 1;
	                                    global.shop_parrotcage_can_upgrade2 = 1;
	                                    global.gold -= 500;
	                                }
	                                break;
	                            case 2: // Покупка якорь 3 ур
	                                if global.purch_parrotcage3 = 0 && global.gold >= 750 && global.shop_parrotcage_can_upgrade2 = 1
	                                {
	                                    fnc_snd_play_over(snd_menu_accept);
	                                    buy_confirm = 0;
	                                    global.purch_parrotcage3 = 1;
	                                    global.gold -= 750;
	                                }
	                                break;
                            }
                            break;
                    }
                    break;
                    
                    case 4: 
                        switch(index)
                        {
                            case 0: // Обмен монет на ХП
                                if global.secrets >=price_hp 
                                {
                                    fnc_snd_play_over(snd_menu_accept);
                                    buy_confirm = 0;
									buy_confirm_yesno = 1;
                                    global.secrets -= price_hp;
                                    global.hp_max +=1;
                                    global.hp = global.hp_max;
                                }
                                break;
                            case 1: // Обмен моент на ману
                                if global.secrets >=3 
                                {
                                    fnc_snd_play_over(snd_menu_accept);
                                    buy_confirm = 0;
									buy_confirm_yesno = 1;
                                    global.secrets -= 3;
                                    global.mana_max +=1;
                                    global.mana = global.mana_max;
                                }
                                break;
                            case 2: // Обмен моент на ману
                                if global.hp_max > 5+global.hp_add 
                                {
                                    fnc_snd_play_over(snd_menu_accept);
                                    buy_confirm = 0;
									buy_confirm_yesno = 1;
                                    global.secrets += price_hp-1;
                                    global.hp_max -=1;
                                    global.hp = global.hp_max;
                                }
                                break;
                            case 3: // Обмен моент на ману
                                if global.mana_max > 3+global.mana_add
                                {
                                    fnc_snd_play_over(snd_menu_accept);
                                    buy_confirm = 0;
									buy_confirm_yesno = 1;
                                    global.secrets += 3;
                                    global.mana_max -=1;
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
                        if global.purch_anch2 = 0 itemprice = 500; else itemprice = 0;
                        break;
                    case 2:
                        if global.purch_anch3 = 0 itemprice = 1000; else itemprice = 0;
                        break;  
                }
                break;
            case 1: 
                switch(dindex)
                {
                    case 0:
                        if global.purch_bomb1 = 0 itemprice = 250; else itemprice = 0;                      
                        break;
                    case 1:
                        if global.purch_bomb2 = 0 itemprice = 500; else itemprice = 0;
                        break;
                    case 2:
                        if global.purch_bomb3 = 0 itemprice = 1000; else itemprice = 0;
                        break;  
                }
                break;
            case 2: 
                switch(dindex)
                {
                    case 0:
                        if global.purch_sparkle1 = 0 itemprice = 250; else itemprice = 0;                      
                        break;
                    case 1:
                        if global.purch_sparkle2 = 0 itemprice = 500; else itemprice = 0;
                        break;
                    case 2:
                        if global.purch_sparkle3 = 0 itemprice = 1000; else itemprice = 0;
                        break;  
                }
                break;
            case 3: 
                switch(dindex)
                {
                    case 0:
                        if global.purch_eparrot1 = 0 itemprice = 250; else itemprice = 0;                      
                        break;
                    case 1:
                        if global.purch_eparrot2 = 0 itemprice = 500; else itemprice = 0;
                        break;
                    case 2:
                        if global.purch_eparrot3 = 0 itemprice = 1000; else itemprice = 0;
                        break;  
                }
                break;
            
                default :
                itemprice = 0;             
        }     
        break;
    case 2:
         switch(index)
        {
            case 0: 
                if global.superattack1 = 0 itemprice = 1000; else itemprice = 0;            
                break;
            case 1: 
                if global.superattack1 = 1 itemprice = 2000; else itemprice = 0;
                break;
            case 2: 
                if global.superattack2 = 0 itemprice = 3000; else itemprice = 0;
                break;
            case 3: 
                if global.superattack3 = 0 itemprice = 2000; else itemprice = 0;
                break;
            
                default :
                itemprice = 0;             
        }     
        break;
    case 3: 
        switch(index)
        {
            case 0: 
                switch(dindex)
                {
                    case 0:
                        if global.purch_rapidfire1 = 0 itemprice = 250; else itemprice = 0;                      
                        break;
                    case 1:
                        if global.purch_rapidfire2 = 0 itemprice = 500; else itemprice = 0;
                        break;
                    case 2:
                        if global.purch_rapidfire3 = 0 itemprice = 750; else itemprice = 0;
                        break;   
                }
            break;
            case 1: 
                switch(dindex)
                {
                    case 0:
                        if global.purch_dualpistols1 = 0 itemprice = 250; else itemprice = 0;                      
                        break;
                    case 1:
                        if global.purch_dualpistols2 = 0 itemprice = 500; else itemprice = 0;
                        break;
                    case 2:
                        if global.purch_dualpistols3 = 0 itemprice = 750; else itemprice = 0;
                        break;   
                }
            break;
            case 2: 
                switch(dindex)
                {
                    case 0:
                        if global.purch_blunderbuss1 = 0 itemprice = 250; else itemprice = 0;                      
                        break;
                    case 1:
                        if global.purch_blunderbuss2 = 0 itemprice = 500; else itemprice = 0;
                        break;
                    case 2:
                        if global.purch_blunderbuss3 = 0 itemprice = 750; else itemprice = 0;
                        break;   
                }
            break;
            case 3: 
                switch(dindex)
                {
                    case 0:
                        if global.purch_parrotcage1 = 0 itemprice = 250; else itemprice = 0;                      
                        break;
                    case 1:
                        if global.purch_parrotcage2 = 0 itemprice = 500; else itemprice = 0;
                        break;
                    case 2:
                        if global.purch_parrotcage3 = 0 itemprice = 750; else itemprice = 0;
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

