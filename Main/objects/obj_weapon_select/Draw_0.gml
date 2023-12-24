/// @description Insert description here
// You can write your code in this editor
draw_set_colour(c_black);

draw_rectangle(0,0,room_width,room_height,false);

draw_rectangle(0,0,room_width,room_height,false);
#region визуал

draw_sprite(spr_shop,6,camera_get_view_x(view_camera[0])+240,camera_get_view_y(view_camera[0])+135);

#endregion

if global.language = 1 draw_set_font(fnt_pixel_ru) else draw_set_font(fnt_pixel);


#region Отрисовка описаний


#region название магазина
draw_set_halign(fa_center);
draw_set_color(c_white);
draw_text(camera_get_view_x(view_camera[0])+240,camera_get_view_y(view_camera[0])+16,store);

#endregion

#region Отрисовка текстов

draw_set_halign(fa_left);
//draw_set_font(fnt_pixel);



var gap = 14;

//for (var i = 0; i < array_length_2d(menu, submenu); ++i) {
for (var i = 0; i < array_length(menu); ++i) {

    draw_set_color(c_white);
    
    if i == index 
    {
        //if index = 1 draw_set_color(c_grey) else draw_set_color(c_red);
        draw_set_color(c_red);
    }
    
    //draw_text(105,52 + gap*i, menu[i]);
    draw_text(camera_get_view_x(view_camera[0])+105-64,camera_get_view_y(view_camera[0])+52 + gap*i, menu[submenu, i]);
}
#endregion

#region отрисовка Выбора

switch(submenu)
    {
        case 1:
            switch(index)
            {
                case 0:   
                    draw_sprite(spr_shop_selector,0,camera_get_view_x(view_camera[0])+120-64+32*dindex,camera_get_view_y(view_camera[0])+72);
                    break;
                case 1:   
                    draw_sprite(spr_shop_selector,0,camera_get_view_x(view_camera[0])+120-64+32*dindex,camera_get_view_y(view_camera[0])+104);
                    break;
                case 2:   
                    draw_sprite(spr_shop_selector,0,camera_get_view_x(view_camera[0])+120-64+32*dindex,camera_get_view_y(view_camera[0])+136);
                    break;
                case 3:   
                    draw_sprite(spr_shop_selector,0,camera_get_view_x(view_camera[0])+120-64+32*dindex,camera_get_view_y(view_camera[0])+168);
                    break;            
            }      
            break;

        case 2:
            switch(index)
            {
                case 0:   
                    draw_sprite(spr_shop_selector,0,camera_get_view_x(view_camera[0])+120-64+32,camera_get_view_y(view_camera[0])+72);
                    break;
                case 1:   
                    draw_sprite(spr_shop_selector,0,camera_get_view_x(view_camera[0])+120-64+32,camera_get_view_y(view_camera[0])+104);
                    break;
                case 2:   
                    draw_sprite(spr_shop_selector,0,camera_get_view_x(view_camera[0])+120-64+32,camera_get_view_y(view_camera[0])+136);
                    break;   
                case 3:   
                    draw_sprite(spr_shop_selector,0,camera_get_view_x(view_camera[0])+120-64+32,camera_get_view_y(view_camera[0])+168);
                    break;  
            }
            break;
            
        case 3:
            switch(index)
            {
                case 0:   
                    draw_sprite(spr_shop_selector,0,camera_get_view_x(view_camera[0])+120-64+32*dindex,camera_get_view_y(view_camera[0])+72);
                    break;
                case 1:   
                    draw_sprite(spr_shop_selector,0,camera_get_view_x(view_camera[0])+120-64+32*dindex,camera_get_view_y(view_camera[0])+104);
                    break;
                case 2:   
                    draw_sprite(spr_shop_selector,0,camera_get_view_x(view_camera[0])+120-64+32*dindex,camera_get_view_y(view_camera[0])+136);
                    break;
                case 3:   
                    draw_sprite(spr_shop_selector,0,camera_get_view_x(view_camera[0])+120-64+32*dindex,camera_get_view_y(view_camera[0])+168);
                    break;            
            }      
            break;
        case 4:
            switch(index)
            {
                case 0:
                    draw_sprite(spr_shop_selector_wide,0,camera_get_view_x(view_camera[0])+152-64,camera_get_view_y(view_camera[0])+72);
                    break;
                case 1:
                    draw_sprite(spr_shop_selector_wide,0,camera_get_view_x(view_camera[0])+152-64,camera_get_view_y(view_camera[0])+104);
                    break;
                case 2:
                    draw_sprite(spr_shop_selector_wide,0,camera_get_view_x(view_camera[0])+152-64,camera_get_view_y(view_camera[0])+136);
                    break;
                case 3:
                    draw_sprite(spr_shop_selector_wide,0,camera_get_view_x(view_camera[0])+152-64,camera_get_view_y(view_camera[0])+168);
                    break;
            }
            
    }

#endregion



#region Описание человек



draw_set_halign(fa_left);
draw_set_valign(fa_center);

switch(submenu)
{
    case 1:
        switch(index)
        {
            case 0:
                draw_set_halign(fa_center);
                draw_text(camera_get_view_x(view_camera[0])+272,camera_get_view_y(view_camera[0])+58,nameh_anchor);   
                draw_set_halign(fa_left);
                draw_text(camera_get_view_x(view_camera[0])+406,camera_get_view_y(view_camera[0])+58,"lvl " + string(dindex+1));   
                break;
            case 1:
                draw_set_halign(fa_center);
                draw_text(camera_get_view_x(view_camera[0])+272,camera_get_view_y(view_camera[0])+58,nameh_grenade);   
                draw_set_halign(fa_left);
                draw_text(camera_get_view_x(view_camera[0])+406,camera_get_view_y(view_camera[0])+58,"lvl " + string(dindex+1));   
                break;
            case 2:
                draw_set_halign(fa_center);
                draw_text(camera_get_view_x(view_camera[0])+272,camera_get_view_y(view_camera[0])+58,nameh_shockball);   
                draw_set_halign(fa_left);
                draw_text(camera_get_view_x(view_camera[0])+406,camera_get_view_y(view_camera[0])+58,"lvl " + string(dindex+1));   
                break;
            case 3:
                draw_set_halign(fa_center);
                draw_text(camera_get_view_x(view_camera[0])+272,camera_get_view_y(view_camera[0])+58,nameh_parrot);   
                draw_set_halign(fa_left);
                draw_text(camera_get_view_x(view_camera[0])+406,camera_get_view_y(view_camera[0])+58,"lvl " + string(dindex+1));   
                break;

            
        }
        break;
        
    case 2:
        draw_set_halign(fa_center);
        switch(index)
        {
            case 0:
                draw_text(camera_get_view_x(view_camera[0])+296,camera_get_view_y(view_camera[0])+58,namep_double_strike);   
                break;
            case 1:
                draw_text(camera_get_view_x(view_camera[0])+296,camera_get_view_y(view_camera[0])+58,namep_lunge); 
                break;
            case 2:
                draw_text(camera_get_view_x(view_camera[0])+296,camera_get_view_y(view_camera[0])+58,namep_toss_up); 
                break;
            case 3:
                draw_text(camera_get_view_x(view_camera[0])+296,camera_get_view_y(view_camera[0])+58,namep_top_down); 
                break;
        }
        break;
    case 3:
        switch(index)
        {
            case 0:
                draw_set_halign(fa_center);
                draw_text(272,58,nameb_qhands);   
                draw_set_halign(fa_left);
                draw_text(406,58,"lvl " + string(dindex+1));   
                break;
            case 1:
                draw_set_halign(fa_center);
                draw_text(272,58,nameb_dpistol);   
                draw_set_halign(fa_left);
                draw_text(406,58,"lvl " + string(dindex+1));   
                break;
            case 2:
                draw_set_halign(fa_center);
                draw_text(272,58,nameb_blunderbuss);   
                draw_set_halign(fa_left);
                draw_text(406,58,"lvl " + string(dindex+1));   
                break;
            case 3:
                draw_set_halign(fa_center);
                draw_text(272,58,nameb_parrotc);   
                draw_set_halign(fa_left);
                draw_text(406,58,"lvl " + string(dindex+1));   
                break;   
        }
        break;  
    case 4:
        for (var o = 0; o < global.hp_max; ++o) {  // MAX HP
                    draw_sprite(spr_hud_heart_mana,0,152+11*o,65)
                }
        for (var p = 0; p < global.mana_max; ++p) {  // MAX MANA
                    draw_sprite(spr_hud_heart_mana,1,152+16*p,97)
                }
    
    
        for (var m = 0; m < 5+global.hp_add; ++m) {  // MAX HP
                    draw_sprite(spr_hud_heart,0,152+11*m,65)
                }
        for (var n = 0; n < 3+global.mana_add; ++n) {  // MAX MANA
                    draw_sprite(spr_hud_mana,0,152+16*n,97)
                }
                
                
        
        break;
}



draw_set_halign(fa_left);
draw_set_valign(fa_left);
switch(submenu)
{
    case 1:  
        if index != 4 
        {
            switch(index){
                case 0: // Якорь
                    switch(dindex){
                        case 0: if global.purch_anch1 = 1 draw_text(camera_get_view_x(view_camera[0])+154,camera_get_view_y(view_camera[0])+70,dHMenu[index,dindex]);
                            break;
                        case 1: if global.purch_anch2 = 1 draw_text(camera_get_view_x(view_camera[0])+154,camera_get_view_y(view_camera[0])+70,dHMenu[index,dindex]);
                            break;
                        case 2: if global.purch_anch3 = 1 draw_text(camera_get_view_x(view_camera[0])+154,camera_get_view_y(view_camera[0])+70,dHMenu[index,dindex]);
                            break;
                    }                    
                    break;
                case 1: // Бомба
                    switch(dindex){
                        case 0: if global.purch_bomb1 = 1 draw_text(camera_get_view_x(view_camera[0])+154,camera_get_view_y(view_camera[0])+70,dHMenu[index,dindex]);
                            break;
                        case 1: if global.purch_bomb2 = 1 draw_text(camera_get_view_x(view_camera[0])+154,camera_get_view_y(view_camera[0])+70,dHMenu[index,dindex]); 
                            break;
                        case 2: if global.purch_bomb3 = 1 draw_text(camera_get_view_x(view_camera[0])+154,camera_get_view_y(view_camera[0])+70,dHMenu[index,dindex]);
                            break;
                    }  
                    break;
                case 2: // Спарк
                    switch(dindex){
                        case 0: if global.purch_sparkle1 = 1 draw_text(camera_get_view_x(view_camera[0])+154,camera_get_view_y(view_camera[0])+70,dHMenu[index,dindex]);
                            break;
                        case 1: if global.purch_sparkle2 = 1 draw_text(camera_get_view_x(view_camera[0])+154,camera_get_view_y(view_camera[0])+70,dHMenu[index,dindex]);
                            break;
                        case 2: if global.purch_sparkle3 = 1 draw_text(camera_get_view_x(view_camera[0])+154,camera_get_view_y(view_camera[0])+70,dHMenu[index,dindex]);
                            break;
                    }  
                    break;
                case 3: // Попуг
                    switch(dindex){
                        case 0: if global.purch_eparrot1 = 1 draw_text(camera_get_view_x(view_camera[0])+154,camera_get_view_y(view_camera[0])+70,dHMenu[index,dindex]);
                            break;
                        case 1: if global.purch_eparrot2 = 1 draw_text(camera_get_view_x(view_camera[0])+154,camera_get_view_y(view_camera[0])+70,dHMenu[index,dindex]);
                            break;
                        case 2: if global.purch_eparrot3 = 1 draw_text(camera_get_view_x(view_camera[0])+154,camera_get_view_y(view_camera[0])+70,dHMenu[index,dindex]);
                            break;
                    }  
                    break;
            }
            
            
            
            switch(isKeyboard)
                {
                    case 0: 
                        draw_text(camera_get_view_x(view_camera[0])+218,camera_get_view_y(view_camera[0])+130,name_use);
                        draw_sprite_ext(spr_gp_icon,3,camera_get_view_x(view_camera[0])+300,camera_get_view_y(view_camera[0])+135,1,1,0,c_white,1);                    
                        draw_text(camera_get_view_x(view_camera[0])+322,camera_get_view_y(view_camera[0])+130,"/");
                        draw_sprite_ext(spr_gp_icon,9,camera_get_view_x(view_camera[0])+335,camera_get_view_y(view_camera[0])+135,1,1,0,c_white,1);                    
                        break;
                    case 1: 
                        draw_text(camera_get_view_x(view_camera[0])+218,camera_get_view_y(view_camera[0])+130,name_use);
                        draw_sprite_ext(spr_key_icon,scr_key_sprite(global.item_key),camera_get_view_x(view_camera[0])+300,camera_get_view_y(view_camera[0])+135,1,1,0,c_white,1); 
                        break;
                }
            
            
        }
        break; 
    case 2:
        if index != 4 draw_text(154,70,dPMenu[index,0]);
        
        switch(index){
            case 0:
                switch(isKeyboard)
                {
                    case 0: 
                        draw_text(218,130,name_use);
                        draw_sprite_ext(spr_gp_icon,6,250,135,1,1,0,c_white,1);                    
                        draw_text(272,130,"/");
                        draw_sprite_ext(spr_gp_icon,7,285,135,1,1,0,c_white,1);                               
                        draw_text(307,130,"+");
                        draw_sprite_ext(spr_gp_icon,10,329,135,1,1,0,c_white,1);  
                        break;
                    case 1: 
                        draw_text(218,130,name_use);
                        draw_sprite_ext(spr_gp_icon,6,250,135,1,1,0,c_white,1);                    
                        draw_text(272,130,"/");
                        draw_sprite_ext(spr_gp_icon,7,285,135,1,1,0,c_white,1);                               
                        draw_text(307,130,"+");
                        draw_sprite_ext(spr_key_icon,scr_key_sprite(global.abil_key),329,135,1,1,0,c_white,1); 
                        break;
                }
                break;
            case 1:
                switch(isKeyboard)
                {
                    case 0: 
                        draw_text(218,130,name_use);
                        draw_sprite_ext(spr_gp_icon,6,250,135,1,1,0,c_white,1);                    
                        draw_text(272,130,"/");
                        draw_sprite_ext(spr_gp_icon,7,285,135,1,1,0,c_white,1);                               
                        draw_text(307,130,"+");
                        draw_sprite_ext(spr_gp_icon,10,329,135,1,1,0,c_white,1);  
                        break;
                    case 1: 
                        draw_text(218,130,name_use);
                        draw_sprite_ext(spr_gp_icon,6,250,135,1,1,0,c_white,1);                    
                        draw_text(272,130,"/");
                        draw_sprite_ext(spr_gp_icon,7,285,135,1,1,0,c_white,1);                               
                        draw_text(307,130,"+");
                        draw_sprite_ext(spr_key_icon,scr_key_sprite(global.abil_key),329,135,1,1,0,c_white,1); 
                        break;
                }
                break;
            case 2:
                switch(isKeyboard)
                {
                    case 0: 
                        draw_text(218,130,name_use);
                        draw_sprite_ext(spr_gp_icon,5,250,135,1,1,0,c_white,1);                                                 
                        draw_text(272,130,"+");
                        draw_sprite_ext(spr_gp_icon,10,285,135,1,1,0,c_white,1);  
                        break;
                    case 1: 
                        draw_text(218,130,name_use);
                        draw_sprite_ext(spr_gp_icon,5,250,135,1,1,0,c_white,1);                    
                        draw_text(272,130,"+");
                        draw_sprite_ext(spr_key_icon,scr_key_sprite(global.abil_key),285,135,1,1,0,c_white,1); 
                        break;
                }
                break;
            case 3:
                switch(isKeyboard)
                {
                    case 0: 
                        draw_text(218,130,name_use);
                        draw_sprite_ext(spr_gp_icon,4,250,135,1,1,0,c_white,1);                                                 
                        draw_text(272,130,"+");
                        draw_sprite_ext(spr_gp_icon,10,285,135,1,1,0,c_white,1);  
                        break;
                    case 1: 
                        draw_text(218,130,name_use);
                        draw_sprite_ext(spr_gp_icon,4,250,135,1,1,0,c_white,1);                    
                        draw_text(272,130,"+");
                        draw_sprite_ext(spr_key_icon,scr_key_sprite(global.abil_key),285,135,1,1,0,c_white,1); 
                        break;
                }
                break;
                break;
        }
        break;
    case 3:
        if index != 4 draw_text(154,70,dBMenu[index,dindex]);
        break;
}
#endregion

#endregion

#region отрисовка апгрейдов

#region Якорь			
    if global.purch_anch1 = 1 draw_sprite(spr_icons_confirm,1,camera_get_view_x(view_camera[0])+120-64,camera_get_view_y(view_camera[0])+72)     
    if global.purch_anch2 = 1 draw_sprite(spr_icons_confirm,2,camera_get_view_x(view_camera[0])+152-64,camera_get_view_y(view_camera[0])+72)                 
    if global.purch_anch3 = 1 draw_sprite(spr_icons_confirm,3,camera_get_view_x(view_camera[0])+184-64,camera_get_view_y(view_camera[0])+72);                
#endregion
#region Бомба
    if global.purch_bomb1 = 1 draw_sprite(spr_icons_confirm,4,camera_get_view_x(view_camera[0])+120-64,camera_get_view_y(view_camera[0])+104)    
    if global.purch_bomb2 = 1 draw_sprite(spr_icons_confirm,5,camera_get_view_x(view_camera[0])+152-64,camera_get_view_y(view_camera[0])+104)
    if global.purch_bomb3 = 1 draw_sprite(spr_icons_confirm,6,camera_get_view_x(view_camera[0])+184-64,camera_get_view_y(view_camera[0])+104);         
#endregion
#region esparkle
    if global.purch_sparkle1 = 1 draw_sprite(spr_icons_confirm,7,camera_get_view_x(view_camera[0])+120-64,camera_get_view_y(view_camera[0])+136);
    if global.purch_sparkle2 = 1 draw_sprite(spr_icons_confirm,8,camera_get_view_x(view_camera[0])+152-64,camera_get_view_y(view_camera[0])+136);
    if global.purch_sparkle3 = 1 draw_sprite(spr_icons_confirm,9,camera_get_view_x(view_camera[0])+184-64,camera_get_view_y(view_camera[0])+136);
#endregion
#region eparrot
    if global.purch_eparrot1 = 1 draw_sprite(spr_icons_confirm,10,camera_get_view_x(view_camera[0])+120-64,camera_get_view_y(view_camera[0])+168);
    if global.purch_eparrot2 = 1 draw_sprite(spr_icons_confirm,11,camera_get_view_x(view_camera[0])+152-64,camera_get_view_y(view_camera[0])+168);
    if global.purch_eparrot3 = 1 draw_sprite(spr_icons_confirm,12,camera_get_view_x(view_camera[0])+184-64,camera_get_view_y(view_camera[0])+168);
#endregion        

#endregion

#region Отрисовка подтверждения
switch(selected){
	case 21: draw_sprite(spr_shop_solditem,0,camera_get_view_x(view_camera[0])+120-64,camera_get_view_y(view_camera[0])+72); break;
	case 22: draw_sprite(spr_shop_solditem,0,camera_get_view_x(view_camera[0])+152-64,camera_get_view_y(view_camera[0])+72); break;
	case 23: draw_sprite(spr_shop_solditem,0,camera_get_view_x(view_camera[0])+184-64,camera_get_view_y(view_camera[0])+72); break;
	case 31: draw_sprite(spr_shop_solditem,0,camera_get_view_x(view_camera[0])+120-64,camera_get_view_y(view_camera[0])+104); break;
	case 32: draw_sprite(spr_shop_solditem,0,camera_get_view_x(view_camera[0])+152-64,camera_get_view_y(view_camera[0])+104); break;
	case 33: draw_sprite(spr_shop_solditem,0,camera_get_view_x(view_camera[0])+184-64,camera_get_view_y(view_camera[0])+104); break;
	case 41: draw_sprite(spr_shop_solditem,0,camera_get_view_x(view_camera[0])+120-64,camera_get_view_y(view_camera[0])+136);break;
	case 42: draw_sprite(spr_shop_solditem,0,camera_get_view_x(view_camera[0])+152-64,camera_get_view_y(view_camera[0])+136);break;
	case 43: draw_sprite(spr_shop_solditem,0,camera_get_view_x(view_camera[0])+184-64,camera_get_view_y(view_camera[0])+136);break;
	case 51: draw_sprite(spr_shop_solditem,0,camera_get_view_x(view_camera[0])+120-64,camera_get_view_y(view_camera[0])+168);  break;
	case 52: draw_sprite(spr_shop_solditem,0,camera_get_view_x(view_camera[0])+152-64,camera_get_view_y(view_camera[0])+168);  break;
	case 53: draw_sprite(spr_shop_solditem,0,camera_get_view_x(view_camera[0])+184-64,camera_get_view_y(view_camera[0])+168); break;
}	
#endregion