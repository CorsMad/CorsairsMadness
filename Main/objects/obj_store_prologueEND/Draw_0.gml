/// @description Insert description here
// You can write your code in this editor
draw_rectangle(camera_get_view_x(view_camera[0]),0,camera_get_view_x(view_camera[0])+480,camera_get_view_y(view_camera[0])+30,false);
#region визуал

draw_sprite(spr_shopend,submenu,240,135);
draw_sprite(spr_shopend_selfs,0,448,224);


#endregion

if global.language = 1 draw_set_font(fnt_pixel_ru) else draw_set_font(fnt_pixel);


#region Отрисовка описаний


#region название магазина
draw_set_halign(fa_center);
draw_set_color(c_white);
if global.language = 1 draw_text(room_width/2,20,store); else {
	draw_text(room_width/2,18,store);

}
#endregion

#region Отрисовка текстов

draw_set_halign(fa_left);
//draw_set_font(fnt_pixel);



var gap = 14;

//for (var i = 0; i < array_length_2d(menu, submenu); ++i) {
for (var i = 0; i < array_length(menu); ++i) {
    
    draw_set_color(c_white);
    if submenu = 0 && (i = 1 || i = 2) draw_set_color(c_dkgray) 
    
    
    if i == index 
    {
        if submenu = 0 && (index = 1 || index = 2) draw_set_color(c_gray) else draw_set_color(c_red)
        //draw_set_color(c_red);
    }
    
    //draw_text(105,52 + gap*i, menu[i]);
    if global.language = 1 draw_text(105-64,52 + gap*i, menu[submenu, i]); else {
		draw_text(105-64,54 + gap*i, menu[submenu, i])
	}
}
#endregion

#region отрисовка Выбора

switch(submenu)
    {
        case 1:
            switch(index)
            {
                case 0:   
                    draw_sprite(spr_shop_selector,0,120-64+32*dindex,72);
                    break;
                case 1:   
                    draw_sprite(spr_shop_selector,0,120-64+32*dindex,104);
                    break;
                case 2:   
                    draw_sprite(spr_shop_selector,0,120-64+32*dindex,136);
                    break;
                case 3:   
                    draw_sprite(spr_shop_selector,0,120-64+32*dindex,168);
                    break;            
            }      
            break;

        case 2:
            switch(index)
            {
                case 0:   
                    draw_sprite(spr_shop_selector,0,120-64+32,72);
                    break;
                case 1:   
                    draw_sprite(spr_shop_selector,0,120-64+32,104);
                    break;
                case 2:   
                    draw_sprite(spr_shop_selector,0,120-64+32,136);
                    break;   
                case 3:   
                    draw_sprite(spr_shop_selector,0,120-64+32,168);
                    break;  
            }
            break;
            
        case 3:
            switch(index)
            {
                case 0:   
                    draw_sprite(spr_shop_selector,0,120-64+32*dindex,72);
                    break;
                case 1:   
                    draw_sprite(spr_shop_selector,0,120-64+32*dindex,104);
                    break;
                case 2:   
                    draw_sprite(spr_shop_selector,0,120-64+32*dindex,136);
                    break;
                case 3:   
                    draw_sprite(spr_shop_selector,0,120-64+32*dindex,168);
                    break;            
            }      
            break;
        case 4:
            switch(index)
            {
                case 0:
                    draw_sprite(spr_shop_selector_wide,0,152-64,72);
                    break;
                case 1:
                    draw_sprite(spr_shop_selector_wide,0,152-64,104);
                    break;
                case 2:
                    draw_sprite(spr_shop_selector_wide,0,152-64,136);
                    break;
                case 3:
                    draw_sprite(spr_shop_selector_wide,0,152-64,168);
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
                draw_text(248,58,nameh_anchor);   
				draw_set_halign(fa_left);
                draw_text(358,58,"lvl " + string(dindex+1));   
				switch(dindex){
					case 0: 
						draw_sprite(spr_collectable_mana1,0,425,56);
					break;	
					case 1: 
						draw_sprite(spr_collectable_mana1,0,425-8,56) ;
						draw_sprite(spr_collectable_mana1,0,425+8,56) ;
					break;	
					case 2: 
						draw_sprite(spr_collectable_mana1,0,410,56) ;
						draw_sprite(spr_collectable_mana1,0,425,56) ;
						draw_sprite(spr_collectable_mana1,0,440,56) ;
					break;	
				}  
                break;
            case 1:
                draw_set_halign(fa_center);
                draw_text(248,58,nameh_grenade);  
				draw_set_halign(fa_left);
                draw_text(358,58,"lvl " + string(dindex+1)); 
				switch(dindex){
					case 0: 
						draw_sprite(spr_collectable_mana1,0,425,56);
					break;	
					case 1: 
						draw_sprite(spr_collectable_mana1,0,425-8,56) ;
						draw_sprite(spr_collectable_mana1,0,425+8,56) ;
					break;	
					case 2: 
						draw_sprite(spr_collectable_mana1,0,410,56) ;
						draw_sprite(spr_collectable_mana1,0,425,56) ;
						draw_sprite(spr_collectable_mana1,0,440,56) ;
					break;	
				}  
                break;
            case 2:
                draw_set_halign(fa_center);
                draw_text(248,58,nameh_shockball); 
				draw_set_halign(fa_left);
                draw_text(358,58,"lvl " + string(dindex+1));  
				switch(dindex){
					case 0: 
						draw_sprite(spr_collectable_mana1,0,425,56);
					break;	
					case 1: 
						draw_sprite(spr_collectable_mana1,0,425-8,56) ;
						draw_sprite(spr_collectable_mana1,0,425+8,56) ;
					break;	
					case 2: 
						draw_sprite(spr_collectable_mana1,0,410,56) ;
						draw_sprite(spr_collectable_mana1,0,425,56) ;
						draw_sprite(spr_collectable_mana1,0,440,56) ;
					break;	
				}  
                break;
            case 3:
                draw_set_halign(fa_center);
                draw_text(248,58,nameh_parrot); 
				draw_set_halign(fa_left);
                draw_text(358,58,"lvl " + string(dindex+1));   
				switch(dindex){
					case 0: 
						draw_sprite(spr_collectable_mana1,0,425,56);
					break;	
					case 1: 
						draw_sprite(spr_collectable_mana1,0,425-8,56) ;
						draw_sprite(spr_collectable_mana1,0,425+8,56) ;
					break;	
					case 2: 
						draw_sprite(spr_collectable_mana1,0,410,56) ;
						draw_sprite(spr_collectable_mana1,0,425,56) ;
						draw_sprite(spr_collectable_mana1,0,440,56) ;
					break;	
				}  
                break;

            
        }
        break;
        
    case 2:
        draw_set_halign(fa_center);
        switch(index)
        {
            case 0:
                draw_text(296,58,namep_double_strike);   
                break;
            case 1:
                draw_text(296,58,namep_lunge); 
                break;
            case 2:
                draw_text(296,58,namep_toss_up); 
                break;
            case 3:
                draw_text(296,58,namep_top_down); 
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
                    draw_sprite(spr_hud_heart_mana,1,152+11*p,97)
                }
    
    
        for (var m = 0; m < 5+global.hp_add; ++m) {  // MAX HP
                    draw_sprite(spr_hud_heart,0,152+11*m,65)
                }
        for (var n = 0; n < 3+global.mana_add; ++n) {  // MAX MANA
                    draw_sprite(spr_hud_mana,0,152+11*n,97)
                }
                
                
        
        break;
}



draw_set_halign(fa_left);
draw_set_valign(fa_left);
switch(submenu)
{
    case 1:  
        if index != 4  draw_text(154,70,dHMenu[index,dindex]);
        break; 
    case 2:
        if index != 4 draw_text(154,70,dPMenu[index,0]);        
        break;
    case 3:
        if index != 4 draw_text(154,70,dBMenu[index,dindex]);
        break;
}
#endregion

#endregion

#region отрисовка стоимости

draw_set_halign(fa_center);
//draw_set_font(fnt_pixel);
draw_set_color(c_white);

if global.gold < itemprice draw_set_color(c_red) else draw_set_color(c_white)

// Отрисовка стоимости
draw_set_halign(fa_left)
if itemprice != 0 {
    draw_text(306,159.5,string(itemprice))
    if submenu = 2 {
        draw_sprite(spr_shop_gold_darkessence,0,306-24,157)   ;
    } else draw_sprite(spr_shop_gold_darkessence,1,306-24,157)   ;
} else {
    draw_text(306,159.5,"");   
}




#endregion

#region отрисовка апгрейдов

switch(submenu)
{
    case 1: // Человек
		#region Якорь
			
            if global.purch_anch1 = 0 draw_sprite(spr_shop_icons_anchor,1,120-64,72) 
            else {
                draw_sprite(spr_icons_confirm,1,120-64,72)    
            }
	        if (global.shop_axe_can_upgrade1 = 0 || (global.completedJungle + global.completedDesert + global.completedSnow + global.completedShadow + global.completedLava = 0)) draw_sprite(spr_icons_confirm,0,152-64,72); 
            else {
                    if global.purch_anch2 = 0 draw_sprite(spr_shop_icons_anchor,2,152-64,72)
                    else draw_sprite(spr_icons_confirm,2,152-64,72);      
                }
            
	        if (global.shop_axe_can_upgrade2 = 0 || (global.completedJungle + global.completedDesert + global.completedSnow + global.completedShadow + global.completedLava < 2)) draw_sprite(spr_icons_confirm,0,184-64,72); 
            else {
                    if global.purch_anch3 = 0 draw_sprite(spr_shop_icons_anchor,3,184-64,72);
                    else draw_sprite(spr_icons_confirm,3,184-64,72);
            }
            if global.purch_anch1 = 1 draw_sprite(spr_shop_solditem,0,120-64,72);    
	        if global.purch_anch2 = 1 draw_sprite(spr_shop_solditem,0,152-64,72);    
	        if global.purch_anch3 = 1 draw_sprite(spr_shop_solditem,0,184-64,72);    
            
		#endregion
		#region Бомба
            if global.purch_bomb1 = 0 draw_sprite(spr_shop_icons_anchor,4,120-64,104) 
            else {
                draw_sprite(spr_icons_confirm,4,120-64,104)    
            }
	        if (global.shop_bomb_can_upgrade1 = 0 || (global.completedJungle + global.completedDesert + global.completedSnow + global.completedShadow + global.completedLava = 0)) draw_sprite(spr_icons_confirm,0,152-64,104); 
            else {
                    if global.purch_bomb2 = 0 draw_sprite(spr_shop_icons_anchor,5,152-64,104)
                    else draw_sprite(spr_icons_confirm,5,152-64,104);      
                }
            
	        if (global.shop_bomb_can_upgrade2 = 0 || (global.completedJungle + global.completedDesert + global.completedSnow + global.completedShadow + global.completedLava < 2)) draw_sprite(spr_icons_confirm,0,184-64,104); 
            else {
                    if global.purch_bomb3 = 0 draw_sprite(spr_shop_icons_anchor,6,184-64,104);
                    else draw_sprite(spr_icons_confirm,6,184-64,104);
            }
            if global.purch_bomb1 = 1 draw_sprite(spr_shop_solditem,0,120-64,104);    
	        if global.purch_bomb2 = 1 draw_sprite(spr_shop_solditem,0,152-64,104);    
	        if global.purch_bomb3 = 1 draw_sprite(spr_shop_solditem,0,184-64,104); 
         
		#endregion
		#region esparkle
            if global.purch_sparkle1 = 0 draw_sprite(spr_shop_icons_anchor,7,120-64,136) 
            else {
                draw_sprite(spr_icons_confirm,7,120-64,136)    
            }
	        if (global.shop_sparkle_can_upgrade1 = 0 || (global.completedJungle + global.completedDesert + global.completedSnow + global.completedShadow + global.completedLava = 0)) draw_sprite(spr_icons_confirm,0,152-64,136); 
            else {
                    if global.purch_sparkle2 = 0 draw_sprite(spr_shop_icons_anchor,8,152-64,136)
                    else draw_sprite(spr_icons_confirm,8,152-64,136);      
                }
            
	        if (global.shop_sparkle_can_upgrade2 = 0 || (global.completedJungle + global.completedDesert + global.completedSnow + global.completedShadow + global.completedLava < 2)) draw_sprite(spr_icons_confirm,0,184-64,136); 
            else {
                    if global.purch_sparkle3 = 0 draw_sprite(spr_shop_icons_anchor,9,184-64,136);
                    else draw_sprite(spr_icons_confirm,9,184-64,136);
            }
            if global.purch_sparkle1 = 1 draw_sprite(spr_shop_solditem,0,120-64,136);    
	        if global.purch_sparkle2 = 1 draw_sprite(spr_shop_solditem,0,152-64,136);    
	        if global.purch_sparkle3 = 1 draw_sprite(spr_shop_solditem,0,184-64,136); 

		#endregion
		#region eparrot
            if global.purch_eparrot1 = 0 draw_sprite(spr_shop_icons_anchor,10,120-64,168) 
            else {
                draw_sprite(spr_icons_confirm,10,120-64,168)    
            }
	        if (global.shop_eparrot_can_upgrade1 = 0 || (global.completedJungle + global.completedDesert + global.completedSnow + global.completedShadow + global.completedLava = 0)) draw_sprite(spr_icons_confirm,0,152-64,168); 
            else {
                    if global.purch_eparrot2 = 0 draw_sprite(spr_shop_icons_anchor,11,152-64,168)
                    else draw_sprite(spr_icons_confirm,11,152-64,168);      
                }
            
	        if (global.shop_eparrot_can_upgrade2 = 0 || (global.completedJungle + global.completedDesert + global.completedSnow + global.completedShadow + global.completedLava < 2)) draw_sprite(spr_icons_confirm,0,184-64,168); 
            else {
                    if global.purch_eparrot3 = 0 draw_sprite(spr_shop_icons_anchor,12,184-64,168);
                    else draw_sprite(spr_icons_confirm,12,184-64,168);
            }
            if global.purch_eparrot1 = 1 draw_sprite(spr_shop_solditem,0,120-64,168);    
	        if global.purch_eparrot2 = 1 draw_sprite(spr_shop_solditem,0,152-64,168);    
	        if global.purch_eparrot3 = 1 draw_sprite(spr_shop_solditem,0,184-64,168); 

		#endregion        
        break;
    case 2: // Одержимый spr_icons_shop_pos
        if global.superattack1 = 0{
            draw_sprite(spr_icons_shop_pos,0,152-64,72); 
            draw_sprite(spr_icons_confirm,0,152-64,104); 
        } else if global.superattack1 = 1 {
            draw_sprite(spr_icons_shop_pos,4,152-64,72); 
            draw_sprite(spr_icons_shop_pos,1,152-64,104);    
        } else if global.superattack1 = 2
        {
            draw_sprite(spr_icons_shop_pos,4,152-64,72); 
            draw_sprite(spr_icons_shop_pos,5,152-64,104);     
        }
        
        if global.superattack2 = 0{
            draw_sprite(spr_icons_shop_pos,2,152-64,136); 
        } else draw_sprite(spr_icons_shop_pos,6,152-64,136); 
        
        if global.superattack3 = 0{
            draw_sprite(spr_icons_shop_pos,3,152-64,168); 
        } else draw_sprite(spr_icons_shop_pos,7,152-64,168); 
        
        
        // Подтвержденные покупки
        if global.superattack1 = 1 {
            draw_sprite(spr_shop_solditem,0,152-64,72);
            }
        if global.superattack1 = 2 {
            draw_sprite(spr_shop_solditem,0,152-64,72);
            draw_sprite(spr_shop_solditem,0,152-64,104);
            }
            
        
	    if global.superattack2 = 1 draw_sprite(spr_shop_solditem,0,152-64,136);    
	    if global.superattack3 = 1 draw_sprite(spr_shop_solditem,0,152-64,168); 
        
        
        
        break;
    case 3: // Якорь
        #region rapidfire
			
            if global.purch_rapidfire1 = 0 draw_sprite(spr_shop_icons_anchor,14,120-64,72) 
            else {
                draw_sprite(spr_icons_confirm,14,120-64,72)    
            }
	        if (global.shop_rapidfire_can_upgrade1 = 0 || (global.completedJungle + global.completedDesert + global.completedSnow + global.completedShadow + global.completedLava = 0)) draw_sprite(spr_icons_confirm,0,152-64,72); 
            else {
                    if global.purch_rapidfire2 = 0 draw_sprite(spr_shop_icons_anchor,15,152-64,72)
                    else draw_sprite(spr_icons_confirm,14,152-64,72);      
                }
            
	        if (global.shop_rapidfire_can_upgrade2 = 0 || (global.completedJungle + global.completedDesert + global.completedSnow + global.completedShadow + global.completedLava < 2)) draw_sprite(spr_icons_confirm,0,184-64,72); 
            else {
                    if global.purch_rapidfire3 = 0 draw_sprite(spr_shop_icons_anchor,16,184-64,72);
                    else draw_sprite(spr_icons_confirm,14,184-64,72);
            }
            if global.purch_rapidfire1 = 1 draw_sprite(spr_shop_solditem,0,120-64,72);    
	        if global.purch_rapidfire2 = 1 draw_sprite(spr_shop_solditem,0,152-64,72);    
	        if global.purch_rapidfire3 = 1 draw_sprite(spr_shop_solditem,0,184-64,72);    
            
		#endregion
		#region dualpist
            if global.purch_dualpistols1 = 0 draw_sprite(spr_shop_icons_anchor,16,120-64,104) 
            else {
                draw_sprite(spr_icons_confirm,16,120-64,104)    
            }
	        if (global.shop_dualpistols_can_upgrade1 = 0 || (global.completedJungle + global.completedDesert + global.completedSnow + global.completedShadow + global.completedLava = 0)) draw_sprite(spr_icons_confirm,0,152-64,104); 
            else {
                    if global.purch_dualpistols2 = 0 draw_sprite(spr_shop_icons_anchor,17,152-64,104)
                    else draw_sprite(spr_icons_confirm,17,152-64,104);      
                }
            
	        if (global.shop_dualpistols_can_upgrade2 = 0 || (global.completedJungle + global.completedDesert + global.completedSnow + global.completedShadow + global.completedLava < 2)) draw_sprite(spr_icons_confirm,0,184-64,104); 
            else {
                    if global.purch_dualpistols3 = 0 draw_sprite(spr_shop_icons_anchor,18,184-64,104);
                    else draw_sprite(spr_icons_confirm,18,184-64,104);
            }
            if global.purch_dualpistols1 = 1 draw_sprite(spr_shop_solditem,0,120-64,104);    
	        if global.purch_dualpistols2 = 1 draw_sprite(spr_shop_solditem,0,152-64,104);    
	        if global.purch_dualpistols3 = 1 draw_sprite(spr_shop_solditem,0,184-64,104); 
         
		#endregion
		#region blunderbuss
            if global.purch_blunderbuss1 = 0 draw_sprite(spr_shop_icons_anchor,19,120-64,136) 
            else {
                draw_sprite(spr_icons_confirm,19,120-64,136)    
            }
	        if (global.shop_blunderbuss_can_upgrade1 = 0 || (global.completedJungle + global.completedDesert + global.completedSnow + global.completedShadow + global.completedLava = 0)) draw_sprite(spr_icons_confirm,0,152-64,136); 
            else {
                    if global.purch_blunderbuss2 = 0 draw_sprite(spr_shop_icons_anchor,20,152-64,136)
                    else draw_sprite(spr_icons_confirm,20,152-64,136);      
                }
            
	        if (global.shop_blunderbuss_can_upgrade2 = 0 || (global.completedJungle + global.completedDesert + global.completedSnow + global.completedShadow + global.completedLava < 2)) draw_sprite(spr_icons_confirm,0,184-64,136); 
            else {
                    if global.purch_blunderbuss3 = 0 draw_sprite(spr_shop_icons_anchor,21,184-64,136);
                    else draw_sprite(spr_icons_confirm,21,184-64,136);
            }
            if global.purch_blunderbuss1 = 1 draw_sprite(spr_shop_solditem,0,120-64,136);    
	        if global.purch_blunderbuss2 = 1 draw_sprite(spr_shop_solditem,0,152-64,136);    
	        if global.purch_blunderbuss3 = 1 draw_sprite(spr_shop_solditem,0,184-64,136); 

		#endregion
		#region parrotcage
            if global.purch_parrotcage1 = 0 draw_sprite(spr_shop_icons_anchor,22,120-64,168) 
            else {
                draw_sprite(spr_icons_confirm,22,120-64,168)    
            }
	        if (global.shop_parrotcage_can_upgrade1 = 0 || (global.completedJungle + global.completedDesert + global.completedSnow + global.completedShadow + global.completedLava = 0)) draw_sprite(spr_icons_confirm,0,152-64,168); 
            else {
                    if global.purch_parrotcage2 = 0 draw_sprite(spr_shop_icons_anchor,23,152-64,168)
                    else draw_sprite(spr_icons_confirm,23,152-64,168);      
                }
            
	        if (global.shop_parrotcage_can_upgrade2 = 0 || (global.completedJungle + global.completedDesert + global.completedSnow + global.completedShadow + global.completedLava < 2)) draw_sprite(spr_icons_confirm,0,184-64,168); 
            else {
                    if global.purch_parrotcage3 = 0 draw_sprite(spr_shop_icons_anchor,24,184-64,168);
                    else draw_sprite(spr_icons_confirm,24,184-64,168);
            }
            if global.purch_parrotcage1 = 1 draw_sprite(spr_shop_solditem,0,120-64,168);    
	        if global.purch_parrotcage2 = 1 draw_sprite(spr_shop_solditem,0,152-64,168);    
	        if global.purch_parrotcage3 = 1 draw_sprite(spr_shop_solditem,0,184-64,168); 

		#endregion        
        break;
}

#endregion

#region Отрисовка золота, эссенции и зеленых 

draw_set_halign(fa_left);
//draw_set_font(fnt_pixel);
draw_set_color(c_white);
draw_text(236-44,159.5,string(global.gold)); //золото
draw_text(236-44,183.5,string(global.secrets)); //зеленые
draw_text(236-44,207.5,string(global.darkessence)); //эссенция

#endregion

#region Отрисовка подтверждения

if buy_confirm = 1 
{
    draw_sprite(spr_shop_purchaseconfirm,buy_confirm_yesno,302,200);
    draw_set_halign(fa_center);
    if global.language = 1 draw_set_font(fnt_pixel_ru) else draw_set_font(fnt_pixel);
    draw_text(302,180,confirm);
    draw_text(302-27,204,confirmy);
    draw_text(302+27,204,confirmn);
    
}

#endregion

#region Помозь


if submenu = 1 && index !=4{ // Человек
    draw_set_halign(fa_right);  
    draw_set_color(c_yellow);
    draw_text(218,130,name_use);
    draw_text(350,130,tipWS);

    draw_set_halign(fa_left)
    draw_set_color(c_white);
    switch(isKeyboard)
    {
        case 0:         
            draw_sprite_ext(spr_gp_icon,3,224,135,1,1,0,c_white,1);                    
            draw_text(244,130,"/");
            draw_sprite_ext(spr_gp_icon,9,254,135,1,1,0,c_white,1);    
            draw_sprite_ext(spr_gp_icon,12,356,135,1,1,0,c_white,1);                    
            break;
        case 1: 
            draw_sprite_ext(spr_key_icon,scr_key_sprite(global.item_key),224,135,1,1,0,c_white,1);                         
            draw_sprite_ext(spr_key_icon,scr_key_sprite(global.select_key),356,135,1,1,0,c_white,1); 
            break;
    }   
}



if submenu = 2 && index !=4 { // Possessed
    
    draw_set_halign(fa_right);
    draw_set_color(c_yellow);
    draw_text(260,130,name_use);
    draw_set_halign(fa_left);
    draw_set_color(c_white);
    switch(index){
            case 0:
                switch(isKeyboard)
                {
                    case 0: 
                        draw_sprite_ext(spr_gp_icon,6,264,135,1,1,0,c_white,1);                    
                        draw_text(286,130,"/");
                        draw_sprite_ext(spr_gp_icon,7,298,135,1,1,0,c_white,1);                               
                        draw_text(322,130,"+");
                        draw_sprite_ext(spr_gp_icon,10,334,135,1,1,0,c_white,1);  
                        break;
                    case 1: 
                        draw_sprite_ext(spr_gp_icon,6,264,135,1,1,0,c_white,1);                    
                        draw_text(286,130,"/");
                        draw_sprite_ext(spr_gp_icon,7,298,135,1,1,0,c_white,1);                               
                        draw_text(322,130,"+");
                        draw_sprite_ext(spr_key_icon,scr_key_sprite(global.abil_key),334,135,1,1,0,c_white,1); 
                        break;
                }
                break;
            case 1:
                switch(isKeyboard)
                {
                    case 0: 
                        draw_sprite_ext(spr_gp_icon,6,264,135,1,1,0,c_white,1);                    
                        draw_text(286,130,"/");
                        draw_sprite_ext(spr_gp_icon,7,298,135,1,1,0,c_white,1);                               
                        draw_text(322,130,"+");
                        draw_sprite_ext(spr_gp_icon,10,334,135,1,1,0,c_white,1);  
                        break;
                    case 1: 
                        draw_sprite_ext(spr_gp_icon,6,264,135,1,1,0,c_white,1);                    
                        draw_text(286,130,"/");
                        draw_sprite_ext(spr_gp_icon,7,298,135,1,1,0,c_white,1);                               
                        draw_text(322,130,"+");
                        draw_sprite_ext(spr_key_icon,scr_key_sprite(global.abil_key),334,135,1,1,0,c_white,1); 
                        break;
                }
                break;
            case 2:
                switch(isKeyboard)
                {
                    case 0: 
                        draw_sprite_ext(spr_gp_icon,5,264,135,1,1,0,c_white,1);                                                 
                        draw_text(286,130,"+");
                        draw_sprite_ext(spr_gp_icon,10,298,135,1,1,0,c_white,1);  
                        break;
                    case 1: 
                        draw_sprite_ext(spr_gp_icon,5,264,135,1,1,0,c_white,1);                    
                        draw_text(286,130,"+");
                        draw_sprite_ext(spr_key_icon,scr_key_sprite(global.abil_key),298,135,1,1,0,c_white,1); 
                        break;
                }
                break;
            case 3:
                switch(isKeyboard)
                {
                    case 0: 
                        draw_sprite_ext(spr_gp_icon,4,264,135,1,1,0,c_white,1);                                                 
                        draw_text(286,130,"+");
                        draw_sprite_ext(spr_gp_icon,10,298,135,1,1,0,c_white,1);  
                        break;
                    case 1: 
                        draw_sprite_ext(spr_gp_icon,4,264,135,1,1,0,c_white,1);                    
                        draw_text(286,130,"+");
                        draw_sprite_ext(spr_key_icon,scr_key_sprite(global.abil_key),298,135,1,1,0,c_white,1); 
                        break;
                }
                break;               
        }
       
}

if submenu = 3 && index !=4 { // Лодка
    draw_set_halign(fa_right);  
    draw_set_color(c_yellow);
    draw_text(280,130,tipBS);
    
    draw_set_halign(fa_left)
    draw_set_color(c_white);
    switch(isKeyboard)
    {
        case 0:
            draw_sprite_ext(spr_gp_icon,12,286,135,1,1,0,c_white,1);                                                 
            draw_text(308,130,"/");
            draw_sprite_ext(spr_gp_icon,8,320,135,1,1,0,c_white,1); 
            break;
        case 1:
            draw_sprite_ext(spr_key_icon,scr_key_sprite(global.select_key),286,135,1,1,0,c_white,1);
            break;
    }
}



#endregion