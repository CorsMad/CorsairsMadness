// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function fnc_confirmlevel1(argument0){
    /// @description Insert description here
// You can write your code in this editor
fnc_lng_level_confirm1();
player_input();


var move = (key_down_pressed - key_up_press) ;
var movelr = (key_right_press - key_left_press) ;



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

if move2!= 0 
{
    fnc_snd_play_over(snd_menu_select);
    index+=move2;
    var size = array_length_2d(menu, submenu);
    if index < 0 index = size - 1;
    else if index >=size  index = 0;
}

if movelr2!= 0 
{
    fnc_snd_play_over(snd_menu_select);
    dindex += movelr2;
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
                        switch(argument0)
                        {
                            case 0: // джунгли
                                global.TargetX = 48;
                                global.TargetY = 160;
                                global.TargetRoom = J1_r1;
                                room_goto(J1FirstLoading);
                                break;
                            case 1: // desert
                                global.TargetX = 32;
                                global.TargetY = 208;
                                global.TargetRoom = D1_r1;
                                room_goto(D1FirstLoading);
                                break;
                            case 2: // snow
                                global.TargetX = 32;
                                global.TargetY = 240;
                                global.TargetRoom = S1_r1;
                                room_goto(SN1FirstLoading);
                                break;
                            case 3: // shadow
                                global.TargetX = 32;
                                global.TargetY = 144;
                                global.TargetRoom = G1_r1;
                                room_goto(G1FirstLoading);
                                break;
                            case 4: // lava
                                global.TargetX = 32;
                                global.TargetY = 224;
                                global.TargetRoom = L1_r1;
                                room_goto(L1FirstLoading);
                                break;
                            case 90: // колиз джунгли
                                global.TargetX = 48;
                                global.TargetY = 240;
                                global.TargetRoom = EnduranceJungle;
                                room_goto(J1FirstEndurance);
                                break;
                            case 91: // колиз пустыня
                                global.TargetX = 48;
                                global.TargetY = 240;
                                global.TargetRoom = EnduranceDesert;
                                room_goto(D1FirstEndurance);
                                break;
                            case 92: // колиз снег
                                global.TargetX = 48;
                                global.TargetY = 240;
                                global.TargetRoom = EnduranceSnow;
                                room_goto(SN1FirstEndurance);
                                break;
                            case 93: // колиз тень
                                global.TargetX = 48;
                                global.TargetY = 240;
                                global.TargetRoom = EnduranceShadow;
                                room_goto(SH1FirstEndurance);
                                break;
                            case 94: // колиз лава
                                global.TargetX = 48;
                                global.TargetY = 224;
                                global.TargetRoom = EnduranceLava;
                                room_goto(L1FirstEndurance);
                                break;
                        }                       
                        break;                      
                case 5: 
                    fnc_snd_play_over(snd_menu_accept);
                    global.choosed_item = 0;   
                    global.choosed_item_tier = 0; 
                    
                    if instance_exists(obj_map_prologue_controller_jungle) obj_map_prologue_controller_jungle.delay = 1;
                    if instance_exists(obj_map_controller_desert) obj_map_controller_desert.delay = 1;
                    if instance_exists(obj_map_controller_snow) obj_map_controller_snow.delay = 1;
                    if instance_exists(obj_map_controller_shadow) obj_map_controller_shadow.delay = 1;
                    if instance_exists(obj_map_controller_lava) obj_map_controller_lava.delay = 1;
                     
                    instance_destroy();
                    break;
            }
            break;
        
    }
}


}
    
function fnc_confirmlevel1N(argument0)    {
    fnc_msc_stop_play();
        switch(argument0)
                        {
                            case 0: // джунгли
                                global.TargetX = 48;
                                global.TargetY = 160;
                                global.TargetRoom = J1_r1;
                                room_goto(J1FirstLoading);
                                break;
                            case 0.1: // джунгли
                                global.TargetX = 32;
                                global.TargetY = 112;
                                global.TargetRoom = J2_r1;
                                room_goto(J1FirstLoading);
                                break;
                            case 1: // desert
                                global.TargetX = 32;
                                global.TargetY = 160;
                                global.TargetRoom = D1_r1;
                                room_goto(D1FirstLoading);
                                break;
                            case 1.1: // desert
                                global.TargetX = 32;
                                global.TargetY = 160;
                                global.TargetRoom = D2_r1;
                                room_goto(D1FirstLoading);
                                break;
                            case 2: // snow
                                global.TargetX = 32;
                                global.TargetY = 240;
                                global.TargetRoom = S1_r1;
                                room_goto(SN1FirstLoading);
                                break;
                            case 2.1: // snow
                                global.TargetX = 32;
                                global.TargetY = 144;
                                global.TargetRoom = S2_r1;
                                room_goto(SN1FirstLoading);
                                break;
                            case 3: // shadow
                                global.TargetX = 32;
                                global.TargetY = 144;
                                global.TargetRoom = G1_r1;
                                room_goto(G1FirstLoading);
                                break;
                            case 3.1: // shadow
                                global.TargetX = 32;
                                global.TargetY = 224;
                                global.TargetRoom = G2_r1;
                                room_goto(G1FirstLoading);
                                break;
                            case 4: // lava
                                global.TargetX = 32;
                                global.TargetY = 224;
                                global.TargetRoom = L1_r1;
                                room_goto(L1FirstLoading);
                                break;
                            case 4.1: // lava
                                global.TargetX = 32;
                                global.TargetY = 224;
                                global.TargetRoom = L2_r1;
                                room_goto(L1FirstLoading);
                                break;
                            case 90: // колиз джунгли
                                global.TargetX = 48;
                                global.TargetY = 240;
                                global.TargetRoom = EnduranceJungle;
                                room_goto(J1FirstEndurance);
                                break;
                            case 91: // колиз пустыня
                                global.TargetX = 48;
                                global.TargetY = 240;
                                global.TargetRoom = EnduranceDesert;
                                room_goto(D1FirstEndurance);
                                break;
                            case 92: // колиз снег
                                global.TargetX = 48;
                                global.TargetY = 240;
                                global.TargetRoom = EnduranceSnow;
                                room_goto(SN1FirstEndurance);
                                break;
                            case 93: // колиз тень
                                global.TargetX = 48;
                                global.TargetY = 240;
                                global.TargetRoom = EnduranceShadow;
                                room_goto(SH1FirstEndurance);
                                break;
                            case 94: // колиз лава
                                global.TargetX = 48;
                                global.TargetY = 224;
                                global.TargetRoom = EnduranceLava;
                                room_goto(L1FirstEndurance);
                                break;
                        }                       
   
}
    
    
    
function fnc_confirmlevel1draw(){
  /// @description Insert description here
// You can write your code in this editor

#region визуал

draw_sprite(spr_confirm_loadout,0,240,135);

#endregion
if global.language = 1 draw_set_font(fnt_pixel_ru) else draw_set_font(fnt_pixel);

draw_set_halign(fa_center)
{
    draw_text(240,16,title);   
}
#region Отрисовка текстов

draw_set_halign(fa_left);

var gap = 14;

for (var i = 0; i < array_length_2d(menu, submenu); ++i) {
    draw_set_color(c_white);
    if i == index 
    {
        draw_set_color(c_red);
    }
    
    draw_text(105,52 + gap*i, menu[submenu, i]);
}
#endregion

#region отрисовка Выбора

switch(submenu)
    {
        case 0:
            switch(index)
            {
                case 0:   
                    draw_sprite(spr_shop_selector,0,120+32*dindex,72);
                    break;
                case 1:   
                    draw_sprite(spr_shop_selector,0,120+32*dindex,104);
                    break;
                case 2:   
                    draw_sprite(spr_shop_selector,0,120+32*dindex,136);
                    break;
                case 3:   
                    draw_sprite(spr_shop_selector,0,120+32*dindex,168);
                    break;            
            }      
            break;

        case 2:
            switch(index)
            {
                case 0:   
                    draw_sprite(spr_shop_selector,0,120+32,72);
                    break;
                case 1:   
                    draw_sprite(spr_shop_selector,0,120+32,104);
                    break;
                case 2:   
                    draw_sprite(spr_shop_selector,0,120+32,136);
                    break;
                case 3:   
                    draw_sprite(spr_shop_selector,0,120+32,168);
                    break;   
            }
            break;
            
        case 3:
            switch(index)
            {
                case 0:   
                    draw_sprite(spr_shop_selector,0,120+32*dindex,72);
                    break;
                case 1:   
                    draw_sprite(spr_shop_selector,0,120+32*dindex,104);
                    break;
                case 2:   
                    draw_sprite(spr_shop_selector,0,120+32*dindex,136);
                    break;
                case 3:   
                    draw_sprite(spr_shop_selector,0,120+32*dindex,168);
                    break;            
            }      
            break;
        case 4:
            switch(index)
            {
                case 0:
                    draw_sprite(spr_shop_selector_wide,0,152,72);
                    break;
                case 1:
                    draw_sprite(spr_shop_selector_wide,0,152,104);
                    break;
            }
            
    }

#endregion

#region Отрисовка иконок

//топор

if global.purch_anch1 = 1 draw_sprite(spr_icons_confirm,1,120,72); else draw_sprite(spr_icons_confirm,0,120,72);
if global.purch_anch2 = 1 draw_sprite(spr_icons_confirm,2,152,72); else draw_sprite(spr_icons_confirm,0,152,72);
if global.purch_anch3 = 1 draw_sprite(spr_icons_confirm,3,184,72); else draw_sprite(spr_icons_confirm,0,184,72);

// Бомба

if global.purch_bomb1 = 1 draw_sprite(spr_icons_confirm,4,120,104); else draw_sprite(spr_icons_confirm,0,120,104);
if global.purch_bomb2 = 1 draw_sprite(spr_icons_confirm,5,152,104); else draw_sprite(spr_icons_confirm,0,152,104);
if global.purch_bomb3 = 1 draw_sprite(spr_icons_confirm,6,184,104); else draw_sprite(spr_icons_confirm,0,184,104);

// Электрич шар

if global.purch_sparkle1 = 1 draw_sprite(spr_icons_confirm,7,120,136); else draw_sprite(spr_icons_confirm,0,120,136);
if global.purch_sparkle2 = 1 draw_sprite(spr_icons_confirm,8,152,136); else draw_sprite(spr_icons_confirm,0,152,136);
if global.purch_sparkle3 = 1 draw_sprite(spr_icons_confirm,9,184,136); else draw_sprite(spr_icons_confirm,0,184,136);

// Попугай

if global.purch_eparrot1 = 1 draw_sprite(spr_icons_confirm,10,120,168); else draw_sprite(spr_icons_confirm,0,120,168);
if global.purch_eparrot2 = 1 draw_sprite(spr_icons_confirm,11,152,168); else draw_sprite(spr_icons_confirm,0,152,168);
if global.purch_eparrot3 = 1 draw_sprite(spr_icons_confirm,12,184,168); else draw_sprite(spr_icons_confirm,0,184,168);

#endregion

#region Отрисовка описаний

#region Описание человек


#region Названия 
#endregion

draw_set_halign(fa_left);
draw_set_valign(fa_center);

switch(submenu)
{
    case 0:
        switch(index)
        {
            case 0:
                draw_set_halign(fa_center);
                draw_text(272,58,nameh_anchor);   
                draw_set_halign(fa_left);
                draw_text(342,58,"lvl " + string(dindex+1));   
                break;
            case 1:
                draw_set_halign(fa_center);
                draw_text(272,58,nameh_grenade);   
                draw_set_halign(fa_left);
                draw_text(342,58,"lvl " + string(dindex+1));   
                break;
            case 2:
                draw_set_halign(fa_center);
                draw_text(272,58,nameh_shockball);   
                draw_set_halign(fa_left);
                draw_text(342,58,"lvl " + string(dindex+1));   
                break;
            case 3:
                draw_set_halign(fa_center);
                draw_text(272,58,nameh_parrot);   
                draw_set_halign(fa_left);
                draw_text(342,58,"lvl " + string(dindex+1));   
                break;

            
        }
        break;
        
    case 2:
        draw_set_halign(fa_center);
        switch(index)
        {
            case 0:
                draw_text(296,58,"double strike");   
                break;
            case 1:
                draw_text(296,58,"lunge"); 
                break;
            case 2:
                draw_text(296,58,"toss-up"); 
                break;
            case 3:
                draw_text(296,58,"top-down strike"); 
                break;
        }
        break;
    case 3:
        switch(index)
        {
            case 0:
                draw_set_halign(fa_center);
                draw_text(272,58,"Quick Hands");   
                draw_set_halign(fa_left);
                draw_text(342,58,"lvl " + string(dindex+1));   
                break;
            case 1:
                draw_set_halign(fa_center);
                draw_text(272,58,"Double pistol");   
                draw_set_halign(fa_left);
                draw_text(342,58,"lvl " + string(dindex+1));   
                break;
            case 2:
                draw_set_halign(fa_center);
                draw_text(272,58,"blunderbuss");   
                draw_set_halign(fa_left);
                draw_text(342,58,"lvl " + string(dindex+1));   
                break;
            case 3:
                draw_set_halign(fa_center);
                draw_text(272,58,"parrot cage");   
                draw_set_halign(fa_left);
                draw_text(342,58,"lvl " + string(dindex+1));   
                break;   
        }
        break;  
    case 4:
        for (var m = 0; m < 6; ++m) {  // MAX HP
                    draw_sprite(spr_hud_heart,0,216+16*m,65)
                }
        for (var n = 0; n < 5; ++n) {  // MAX MANA
                    draw_sprite(spr_hud_mana,0,216+16*n,97)
                }
}

#region ранг
#endregion

draw_set_halign(fa_left);
draw_set_valign(fa_left);
switch(submenu)
{
    case 0:  
        if index < 4 draw_text(218,70,dHMenu[index,dindex]);
        break; 
    case 2:
        if index != 4 draw_text(218,70,dPMenu[index,0]);
        break;
    case 3:
        if index != 4 draw_text(218,70,dBMenu[index,dindex]);
        break;
}
#endregion

#endregion

#region Отрисовка Подтверждения предметов

switch(ChoosedItem)
{
    case 11:
        draw_sprite(spr_shop_solditem,0,120,72);
        break;
    case 12:
        draw_sprite(spr_shop_solditem,0,152,72);
        break;
    case 13:
        draw_sprite(spr_shop_solditem,0,184,72);
        break;
    case 21:
        draw_sprite(spr_shop_solditem,0,120,104);
        break;
    case 22:
        draw_sprite(spr_shop_solditem,0,152,104);
        break;
    case 23:
        draw_sprite(spr_shop_solditem,0,184,104);
        break;
    case 31:
        draw_sprite(spr_shop_solditem,0,120,136);
        break;
    case 32:
        draw_sprite(spr_shop_solditem,0,152,136);
        break;
    case 33:
        draw_sprite(spr_shop_solditem,0,184,136);
        break;
    case 41:
        draw_sprite(spr_shop_solditem,0,120,168);
        break;
    case 42:
        draw_sprite(spr_shop_solditem,0,152,168);
        break;
    case 43:
        draw_sprite(spr_shop_solditem,0,184,168);
        break;
}
#endregion
}
    
function fnc_confirmlevel2(argument0){
    /// @description Insert description here
// You can write your code in this editor
fnc_lng_level_confirm2();
player_input();


var move = (key_down_pressed - key_up_press) ;
var movelr = (key_right_press - key_left_press) ;



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



if key_attack || key_jump_pressed  // accept
{
    switch(submenu)
    {
            
        case 1:
            switch(index)
            {
                case 0:
                    switch(dindex)
                    {
                        case 0:
                            fnc_snd_play_over(snd_menu_accept);
                            if global.purch_rapidfire1 = 1 ChoosedItemBoat = 11;
                            break;
                        case 1:
                            fnc_snd_play_over(snd_menu_accept);
                            if global.purch_rapidfire2 = 1 ChoosedItemBoat = 12;
                            break;
                        case 2:
                            fnc_snd_play_over(snd_menu_accept);
                            if global.purch_rapidfire3 = 1 ChoosedItemBoat = 13;
                            break;
                    }
                    break;
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
                case 2:
                    switch(dindex)
                    {
                        case 0:
                            fnc_snd_play_over(snd_menu_accept);
                            if global.purch_blunderbuss1 = 1 ChoosedItemBoat = 31;
                            break;
                        case 1:
                            fnc_snd_play_over(snd_menu_accept);
                            if global.purch_blunderbuss2 = 1 ChoosedItemBoat = 32;
                            break;
                        case 2:
                            fnc_snd_play_over(snd_menu_accept);
                            if global.purch_blunderbuss3 = 1 ChoosedItemBoat = 33;
                            break;
                    }
                    break;
                case 3:
                    switch(dindex)
                    {
                        case 0:
                            fnc_snd_play_over(snd_menu_accept);
                            if global.purch_parrotcage1 = 1 ChoosedItemBoat = 41;
                            break;
                        case 1:
                            fnc_snd_play_over(snd_menu_accept);
                            if global.purch_parrotcage2 = 1 ChoosedItemBoat = 42;
                            break;
                        case 2:
                            fnc_snd_play_over(snd_menu_accept);
                            if global.purch_parrotcage3 = 1 ChoosedItemBoat = 43;
                            break;
                    }
                    break;
                case 4:
                    #region Выбор Лодки
                        switch(ChoosedItemBoat)
                        {
                            case 11:  
                                fnc_snd_play_over(snd_menu_accept);
                                global.choosed_itemboat = 1;   
                                global.choosed_itemboat_tier = 1; 
                                break;
                            case 12:  
                                fnc_snd_play_over(snd_menu_accept);
                                global.choosed_itemboat = 1;   
                                global.choosed_itemboat_tier = 2; 
                                break;
                            case 13:  
                                fnc_snd_play_over(snd_menu_accept);
                                global.choosed_itemboat = 1;   
                                global.choosed_itemboat_tier = 3; 
                                break;
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
                            case 31:  
                                fnc_snd_play_over(snd_menu_accept);
                                global.choosed_itemboat = 3;   
                                global.choosed_itemboat_tier = 1; 
                                break;
                            case 32:  
                                fnc_snd_play_over(snd_menu_accept);
                                global.choosed_itemboat = 3;   
                                global.choosed_itemboat_tier = 2; 
                                break;
                            case 33:  
                                fnc_snd_play_over(snd_menu_accept);
                                global.choosed_itemboat = 3;   
                                global.choosed_itemboat_tier = 3; 
                                break;
                            case 41: 
                                fnc_snd_play_over(snd_menu_accept);
                                global.choosed_itemboat = 4;   
                                global.choosed_itemboat_tier = 1;   
                                break;
                            case 42: 
                                fnc_snd_play_over(snd_menu_accept);
                                global.choosed_itemboat = 4;   
                                global.choosed_itemboat_tier = 2;   
                                break;
                            case 43: 
                                fnc_snd_play_over(snd_menu_accept);
                                global.choosed_itemboat = 4;   
                                global.choosed_itemboat_tier = 3;   
                                break;
                        }
                    #endregion
                    fnc_msc_stop_play();
                    switch(argument0)
                    {
                        case 0: //джунгли
                            global.TargetX = 48;
                            global.TargetY = 112;
                            global.TargetRoom = J2_r1;
                            room_goto(J1FirstLoading);
                            break;
                        case 1: //пустыня
                            global.TargetX = 32;
                            global.TargetY = 160;
                            global.TargetRoom = D2_r1;
                            room_goto(D1FirstLoading);
                            break;
                        case 2: //снег
                            global.TargetX = 32;
                            global.TargetY = 144;
                            global.TargetRoom = S2_r1;
                            room_goto(SN1FirstLoading);
                            break;
                        case 3: //тень
                            global.TargetX = 32;
                            global.TargetY = 224;
                            global.TargetRoom = G2_r1;
                            room_goto(G1FirstLoading);
                            break;
                        case 4: //лава
                            global.TargetX = 32;
                            global.TargetY = 224;
                            global.TargetRoom = L2_r1;
                            room_goto(L2FirstLoading);
                            break;
                    }
                    
                    break;
                case 5: 
                    fnc_snd_play_over(snd_menu_accept);
                    if instance_exists(obj_map_prologue_controller_jungle) obj_map_prologue_controller_jungle.delay = 1;
                    if instance_exists(obj_map_controller_desert) obj_map_controller_desert.delay = 1;
                    if instance_exists(obj_map_controller_snow) obj_map_controller_snow.delay = 1;
                    if instance_exists(obj_map_controller_shadow) obj_map_controller_shadow.delay = 1;
                    if instance_exists(obj_map_controller_lava) obj_map_controller_lava.delay = 1;
                    instance_destroy();
                    break;
            }
        break;
    }
}

   
}
    
function fnc_confirmlevel2draw(){


#region визуал

draw_sprite(spr_confirm_loadout,submenu,240,135);

#endregion
if global.language = 1 draw_set_font(fnt_pixel_ru) else draw_set_font(fnt_pixel);

draw_set_halign(fa_center)
{
    if submenu = 0 draw_text(240,16,title); else draw_text(240,16,title2);   
}


#region Отрисовка текстов

draw_set_halign(fa_left);

var gap = 14;

for (var i = 0; i < array_length_2d(menu, submenu); ++i) {
    draw_set_color(c_white);
    if i == index 
    {
        draw_set_color(c_red);
    }
    
    draw_text(105,52 + gap*i, menu[submenu, i]);
}
#endregion

#region отрисовка Выбора

switch(submenu)
    {
        case 0:
            switch(index)
            {
                case 0:   
                    draw_sprite(spr_shop_selector,0,120+32*dindex,72);
                    break;
                case 1:   
                    draw_sprite(spr_shop_selector,0,120+32*dindex,104);
                    break;
                case 2:   
                    draw_sprite(spr_shop_selector,0,120+32*dindex,136);
                    break;
                case 3:   
                    draw_sprite(spr_shop_selector,0,120+32*dindex,168);
                    break;            
            }      
            break;
        case 1:
            switch(index)
            {
                case 0:   
                    draw_sprite(spr_shop_selector,0,120+32*dindex,72);
                    break;
                case 1:   
                    draw_sprite(spr_shop_selector,0,120+32*dindex,104);
                    break;
                case 2:   
                    draw_sprite(spr_shop_selector,0,120+32*dindex,136);
                    break;
                case 3:   
                    draw_sprite(spr_shop_selector,0,120+32*dindex,168);
                    break;            
            }      
            break;

        case 2:
            switch(index)
            {
                case 0:   
                    draw_sprite(spr_shop_selector,0,120+32,72);
                    break;
                case 1:   
                    draw_sprite(spr_shop_selector,0,120+32,104);
                    break;
                case 2:   
                    draw_sprite(spr_shop_selector,0,120+32,136);
                    break;
                case 3:   
                    draw_sprite(spr_shop_selector,0,120+32,168);
                    break;   
            }
            break;
            
        case 3:
            switch(index)
            {
                case 0:   
                    draw_sprite(spr_shop_selector,0,120+32*dindex,72);
                    break;
                case 1:   
                    draw_sprite(spr_shop_selector,0,120+32*dindex,104);
                    break;
                case 2:   
                    draw_sprite(spr_shop_selector,0,120+32*dindex,136);
                    break;
                case 3:   
                    draw_sprite(spr_shop_selector,0,120+32*dindex,168);
                    break;            
            }      
            break;
        case 4:
            switch(index)
            {
                case 0:
                    draw_sprite(spr_shop_selector_wide,0,152,72);
                    break;
                case 1:
                    draw_sprite(spr_shop_selector_wide,0,152,104);
                    break;
            }
            
    }

#endregion

#region Отрисовка иконок

switch(submenu)
{
    case 0:    
        #region 1
            //топор

            if global.purch_anch1 = 1 draw_sprite(spr_icons_confirm,1,120,72); else draw_sprite(spr_icons_confirm,0,120,72);
            if global.purch_anch2 = 1 draw_sprite(spr_icons_confirm,2,152,72); else draw_sprite(spr_icons_confirm,0,152,72);
            if global.purch_anch3 = 1 draw_sprite(spr_icons_confirm,3,184,72); else draw_sprite(spr_icons_confirm,0,184,72);


            // Бомба

            if global.purch_bomb1 = 1 draw_sprite(spr_icons_confirm,4,120,104); else draw_sprite(spr_icons_confirm,0,120,104);
            if global.purch_bomb2 = 1 draw_sprite(spr_icons_confirm,5,152,104); else draw_sprite(spr_icons_confirm,0,152,104);
            if global.purch_bomb3 = 1 draw_sprite(spr_icons_confirm,6,184,104); else draw_sprite(spr_icons_confirm,0,184,104);


            // Электрич шар

            if global.purch_sparkle1 = 1 draw_sprite(spr_icons_confirm,7,120,136); else draw_sprite(spr_icons_confirm,0,120,136);
            if global.purch_sparkle2 = 1 draw_sprite(spr_icons_confirm,8,152,136); else draw_sprite(spr_icons_confirm,0,152,136);
            if global.purch_sparkle3 = 1 draw_sprite(spr_icons_confirm,9,184,136); else draw_sprite(spr_icons_confirm,0,184,136);

            // Попугай

            if global.purch_eparrot1 = 1 draw_sprite(spr_icons_confirm,10,120,168); else draw_sprite(spr_icons_confirm,0,120,168);
            if global.purch_eparrot2 = 1 draw_sprite(spr_icons_confirm,11,152,168); else draw_sprite(spr_icons_confirm,0,152,168);
            if global.purch_eparrot3 = 1 draw_sprite(spr_icons_confirm,12,184,168); else draw_sprite(spr_icons_confirm,0,184,168);

            #endregion
        break;
    
    case 1:
         #region 2
         
            // Быстровыст
            
            if global.purch_rapidfire1 = 1 draw_sprite(spr_icons_confirm,13,120,72); else draw_sprite(spr_icons_confirm,0,120,72);
            if global.purch_rapidfire2 = 1 draw_sprite(spr_icons_confirm,14,152,72); else draw_sprite(spr_icons_confirm,0,152,72);
            if global.purch_rapidfire3 = 1 draw_sprite(spr_icons_confirm,15,184,72); else draw_sprite(spr_icons_confirm,0,184,72);


            // двойной

            if global.purch_dualpistols1 = 1 draw_sprite(spr_icons_confirm,16,120,104); else draw_sprite(spr_icons_confirm,0,120,104);
            if global.purch_dualpistols2 = 1 draw_sprite(spr_icons_confirm,17,152,104); else draw_sprite(spr_icons_confirm,0,152,104);
            if global.purch_dualpistols3 = 1 draw_sprite(spr_icons_confirm,18,184,104); else draw_sprite(spr_icons_confirm,0,184,104);


            // бландерб

            if global.purch_blunderbuss1 = 1 draw_sprite(spr_icons_confirm,19,120,136); else draw_sprite(spr_icons_confirm,0,120,136);
            if global.purch_blunderbuss2 = 1 draw_sprite(spr_icons_confirm,20,152,136); else draw_sprite(spr_icons_confirm,0,152,136);
            if global.purch_blunderbuss3 = 1 draw_sprite(spr_icons_confirm,21,184,136); else draw_sprite(spr_icons_confirm,0,184,136);

            // клетка

            if global.purch_parrotcage1 = 1 draw_sprite(spr_icons_confirm,22,120,168); else draw_sprite(spr_icons_confirm,0,120,168);
            if global.purch_parrotcage2 = 1 draw_sprite(spr_icons_confirm,23,152,168); else draw_sprite(spr_icons_confirm,0,152,168);
            if global.purch_parrotcage3 = 1 draw_sprite(spr_icons_confirm,24,184,168); else draw_sprite(spr_icons_confirm,0,184,168);

            #endregion
}



#endregion

#region Отрисовка описаний

#region Описание человек


#region Названия 
#endregion

draw_set_halign(fa_left);
draw_set_valign(fa_center);

switch(submenu)
{
    case 0:
        switch(index)
        {
            case 0:
                draw_set_halign(fa_center);
                draw_text(272,58,nameh_anchor);   
                draw_set_halign(fa_left);
                draw_text(342,58,"lvl " + string(dindex+1));   
                break;
            case 1:
                draw_set_halign(fa_center);
                draw_text(272,58,nameh_grenade);   
                draw_set_halign(fa_left);
                draw_text(342,58,"lvl " + string(dindex+1));   
                break;
            case 2:
                draw_set_halign(fa_center);
                draw_text(272,58,nameh_shockball);   
                draw_set_halign(fa_left);
                draw_text(342,58,"lvl " + string(dindex+1));   
                break;
            case 3:
                draw_set_halign(fa_center);
                draw_text(272,58,nameh_parrot);   
                draw_set_halign(fa_left);
                draw_text(342,58,"lvl " + string(dindex+1));   
                break;

            
        }
        break;
        
    case 2:
        draw_set_halign(fa_center);
        switch(index)
        {
            case 0:
                draw_text(296,58,"double strike");   
                break;
            case 1:
                draw_text(296,58,"lunge"); 
                break;
            case 2:
                draw_text(296,58,"toss-up"); 
                break;
            case 3:
                draw_text(296,58,"top-down strike"); 
                break;
        }
        break;
    case 1:
        switch(index)
        {
            case 0:
                draw_set_halign(fa_center);
                draw_text(272,58,nameb_qhands);   
                draw_set_halign(fa_left);
                draw_text(342,58,"lvl " + string(dindex+1));   
                break;
            case 1:
                draw_set_halign(fa_center);
                draw_text(272,58,nameb_dpistol);   
                draw_set_halign(fa_left);
                draw_text(342,58,"lvl " + string(dindex+1));   
                break;
            case 2:
                draw_set_halign(fa_center);
                draw_text(272,58,nameb_blunderbuss);   
                draw_set_halign(fa_left);
                draw_text(342,58,"lvl " + string(dindex+1));   
                break;
            case 3:
                draw_set_halign(fa_center);
                draw_text(272,58,nameb_parrotc);   
                draw_set_halign(fa_left);
                draw_text(342,58,"lvl " + string(dindex+1));   
                break;   
        }
        break;  
    case 4:
        for (var m = 0; m < 6; ++m) {  // MAX HP
                    draw_sprite(spr_hud_heart,0,216+16*m,65)
                }
        for (var n = 0; n < 5; ++n) {  // MAX MANA
                    draw_sprite(spr_hud_mana,0,216+16*n,97)
                }
}

#region ранг
#endregion

draw_set_halign(fa_left);
draw_set_valign(fa_left);
switch(submenu)
{
    case 0:  
        if index < 4 draw_text(218,70,dHMenu[index,dindex]);
        break; 
    case 1:
        if index < 4 draw_text(218,70,dBMenu[index,dindex]);
        break;
}
#endregion

#endregion

#region Отрисовка Подтверждения предметов

switch(submenu)
{
    case 0:
        switch(ChoosedItem)
        {
            case 11:
                draw_sprite(spr_shop_solditem,0,120,72);
                break;
            case 12:
                draw_sprite(spr_shop_solditem,0,152,72);
                break;
            case 13:
                draw_sprite(spr_shop_solditem,0,184,72);
                break;
            case 21:
                draw_sprite(spr_shop_solditem,0,120,104);
                break;
            case 22:
                draw_sprite(spr_shop_solditem,0,152,104);
                break;
            case 23:
                draw_sprite(spr_shop_solditem,0,184,104);
                break;
            case 31:
                draw_sprite(spr_shop_solditem,0,120,136);
                break;
            case 32:
                draw_sprite(spr_shop_solditem,0,152,136);
                break;
            case 3:
                draw_sprite(spr_shop_solditem,0,184,136);
                break;
            case 41:
                draw_sprite(spr_shop_solditem,0,120,168);
                break;
            case 42:
                draw_sprite(spr_shop_solditem,0,152,168);
                break;
            case 43:
                draw_sprite(spr_shop_solditem,0,184,168);
                break;
        }
        break;
    case 1:
        switch(ChoosedItemBoat)
        {
            case 11:
                draw_sprite(spr_shop_solditem,0,120,72);
                break;
            case 12:
                draw_sprite(spr_shop_solditem,0,152,72);
                break;
            case 13:
                draw_sprite(spr_shop_solditem,0,184,72);
                break;
            case 21:
                draw_sprite(spr_shop_solditem,0,120,104);
                break;
            case 22:
                draw_sprite(spr_shop_solditem,0,152,104);
                break;
            case 23:
                draw_sprite(spr_shop_solditem,0,184,104);
                break;
            case 31:
                draw_sprite(spr_shop_solditem,0,120,136);
                break;
            case 32:
                draw_sprite(spr_shop_solditem,0,152,136);
                break;
            case 33:
                draw_sprite(spr_shop_solditem,0,184,136);
                break;
            case 41:
                draw_sprite(spr_shop_solditem,0,120,168);
                break;
            case 42:
                draw_sprite(spr_shop_solditem,0,152,168);
                break;
            case 43:
                draw_sprite(spr_shop_solditem,0,184,168);
                break;
        }
        break;
}

#endregion     
}