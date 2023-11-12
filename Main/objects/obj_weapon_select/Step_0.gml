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

        case 1: // Человек          
            switch(index)
            {
                case 0: // ВЫБОР якорей
                    switch(dindex)
                    {
                        case 0: // 1-й якорь   
                            if (global.purch_anch1 = 1) {
								fnc_snd_play_onetime(snd_menu_accept)
								global.choosed_item = 2;
								global.choosed_item_tier = 1;							
							}	
                            break;
                        case 1: // 2-й якорь   
                            if (global.purch_anch2 = 1){
								fnc_snd_play_onetime(snd_menu_accept)
								global.choosed_item = 2;
								global.choosed_item_tier = 2;
							}
                            break;
                        case 2: // 3-й якорь   
                            if (global.purch_anch3 = 1){
								fnc_snd_play_onetime(snd_menu_accept)
								global.choosed_item = 2;
								global.choosed_item_tier = 3;	
							}
                            break;
                    }
                    break;
                case 1: // ВЫБОР Бомб
                    switch(dindex)
                    {
                        case 0: // 1-й якорь   
                            if (global.purch_bomb1 = 1){
								fnc_snd_play_onetime(snd_menu_accept)
								global.choosed_item = 3;
								global.choosed_item_tier = 1;
							}
                            break;
                        case 1: // 2-й якорь   
                            if (global.purch_bomb2 = 1){
								fnc_snd_play_onetime(snd_menu_accept)
								global.choosed_item = 3;
								global.choosed_item_tier = 2;
							}
                            break;
                        case 2: // 3-й якорь   
                            if (global.purch_bomb3 = 1){
								fnc_snd_play_onetime(snd_menu_accept)
								global.choosed_item = 3;
								global.choosed_item_tier = 3;
							}
                            break;
                    }
                    break;
                case 2: // ВЫБОР sparkle
                    switch(dindex)
                    {
                        case 0: // 1-й якорь   
                            if (global.purch_sparkle1 = 1){
								fnc_snd_play_onetime(snd_menu_accept)
								global.choosed_item = 4;
								global.choosed_item_tier = 1;
							}
                            break;
                        case 1: // 2-й якорь   
                            if (global.purch_sparkle2 = 1){
								fnc_snd_play_onetime(snd_menu_accept)
								global.choosed_item = 4;
								global.choosed_item_tier = 2;
							} 
                            break;
                        case 2: // 3-й якорь   
                            if (global.purch_sparkle3 = 1){
								fnc_snd_play_onetime(snd_menu_accept)
								global.choosed_item = 4;
								global.choosed_item_tier = 3;
							}
                            break;
                    }
                    break;
                case 3: // ВЫБОР попугая
                    switch(dindex)
                    {
                        case 0: // 1-й якорь   
                            if (global.purch_eparrot1 = 1){
								fnc_snd_play_onetime(snd_menu_accept)
								global.choosed_item = 5;
								global.choosed_item_tier = 1;
							}
                            break;
                        case 1: // 2-й якорь   
                            if (global.purch_eparrot2 = 1){
								fnc_snd_play_onetime(snd_menu_accept)
								global.choosed_item = 5;
								global.choosed_item_tier = 2;
							}
                            break;
                        case 2: // 3-й якорь   
                            if (global.purch_eparrot3 = 1){
								fnc_snd_play_onetime(snd_menu_accept)
								global.choosed_item = 5;
								global.choosed_item_tier = 3;
							}
                            break;
                    }
                    break;
                
                case 4:
                    //if instance_exists(obj_weapon_select) obj_weapon_select.isPaused = 0;
                    fnc_snd_play_over(snd_pause_off);
                    instance_activate_all();
                    instance_destroy();
                    break;
            }
            break;
    }
}

}
if delay!= 0 delay -= 0.1;

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
                        if global.purch_anch3 = 0 itemprice = 750; else itemprice = 0;
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
                        if global.purch_bomb3 = 0 itemprice = 750; else itemprice = 0;
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
                        if global.purch_sparkle3 = 0 itemprice = 750; else itemprice = 0;
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
                        if global.purch_eparrot3 = 0 itemprice = 750; else itemprice = 0;
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
                if global.superattack2 = 0 itemprice = 2000; else itemprice = 0;
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


#region  Выбор
switch(global.choosed_item){
	case 2:	// Axe
		switch(global.choosed_item_tier){
			case 1: selected = 21;break;
			case 2: selected = 22;break;
			case 3: selected = 23;break;
		}
		break;
	case 3:	// Bomb
		switch(global.choosed_item_tier){
			case 1: selected = 31;break;
			case 2: selected = 32;break;
			case 3: selected = 33;break;
		}
		break;
	case 4:	// Eball
		switch(global.choosed_item_tier){
			case 1: selected = 41;break;
			case 2: selected = 42;break;
			case 3: selected = 43;break;
		}
		break;
	case 5:	// Parrot
		switch(global.choosed_item_tier){
			case 1: selected = 51;break;
			case 2: selected = 52;break;
			case 3: selected = 53;break;
		}
		break;
}
#endregion
