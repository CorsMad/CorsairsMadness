/// @description Insert description here
// You can write your code in this editor

#region Inventory
if invOn = 1 {

draw_set_alpha(0.95)
draw_set_color(c_black)
draw_rectangle(0,0,room_width,room_height,0);
draw_set_alpha(1);

draw_sprite(spr_inventory,0,0,0);

txt_outline(32,8,1,c_white,"gold:" + string(gold));

//draw_sprite_stretched(spr_info_bord,0,128,32,sprite_get_width(spr_info_bord)*2,sprite_get_height(spr_info_bord)*3);
//draw_sprite_stretched(spr_info_bord,0,256,32,sprite_get_width(spr_info_bord)*2,sprite_get_height(spr_info_bord)*3);



#region // переключение вкладок

draw_set_color(c_white);
 
if point_in_rectangle(mouse_x,mouse_y,46,29,70,53) && mouse_check_button_pressed(mb_left) && page!=0 { page = 0;shown = undefined; shown_i = undefined;}
if point_in_rectangle(mouse_x,mouse_y,76,29,100,53) && mouse_check_button_pressed(mb_left) && page!=1 { page = 1;shown = undefined; shown_i = undefined;}
if point_in_rectangle(mouse_x,mouse_y,106,29,130,53) && mouse_check_button_pressed(mb_left) && page!=2 { page = 2;shown = undefined; shown_i = undefined;}

#endregion

#region // переключение магазина инвентаря

draw_set_color(c_white);
 
if point_in_rectangle(mouse_x,mouse_y,192,16,224,48) && mouse_check_button_pressed(mb_left) && inven_shop = 1 { 
    inven_shop = 0;
    if shown = a_equip[equip.TRINKET] && shown = a_equip[equip.ARMOR] && shown = a_equip[equip.WEAPON]{
        shown = undefined; 
        shown_i = undefined;
    }
}//shown = undefined; shown_i = undefined;}

if point_in_rectangle(mouse_x,mouse_y,256,16,288,48) && mouse_check_button_pressed(mb_left) && inven_shop = 0 {
    inven_shop = 1;
    if shown!= a_equip[equip.TRINKET] && shown != a_equip[equip.ARMOR] && shown != a_equip[equip.WEAPON]{
        shown = undefined; 
        shown_i = undefined;
    }
}//shown = undefined; shown_i = undefined;}


#endregion

// показ вкладок инвентаря

switch(inven_shop){
    case 0: 
        #region Inv
            switch(page){
                case 0: // Оружие
                    fnc_show_inventory(inventory_w);
                    break;
                case 1: // Броня 
                    fnc_show_inventory(inventory_a);
                    break;
                case 2: // Тринк
                    fnc_show_inventory(inventory_t);
                    break;
            }
        #endregion
        break;
    case 1:
        #region Shop
            switch(page){
                case 0: // Оружие
                    fnc_show_inventory(shop_w);
                    break;
                case 1: // Броня 
                    fnc_show_inventory(shop_a);
                    break;
                case 2: // Тринк
                    fnc_show_inventory(shop_t);
                    break;
            }
        #endregion
        break;
}



#region // Кнопка экипировать

if shown!= undefined && shown!= a_equip[equip.TRINKET] && shown!= a_equip[equip.ARMOR] && shown!= a_equip[equip.WEAPON] && inven_shop = 0{  
	draw_rectangle(128,190,164,240,0);	
	if point_in_rectangle(mouse_x,mouse_y,128,190,164,240) && mouse_check_button_pressed(mb_left){
		switch(shown.place){
            case equip.WEAPON:
				if a_equip[equip.WEAPON] != undefined array_push(inventory_w, a_equip[equip.WEAPON]);
					a_equip[equip.WEAPON] = shown;
					array_delete(inventory_w,shown_i,1);	
					shown = undefined;	
				break;
            case equip.ARMOR:
				if a_equip[equip.ARMOR] != undefined array_push(inventory_a, a_equip[equip.ARMOR]);
					a_equip[equip.ARMOR] = shown;
					array_delete(inventory_a,shown_i,1);	
					shown = undefined;			
				break;
			case equip.TRINKET: 				
				if a_equip[equip.TRINKET] != undefined array_push(inventory_t, a_equip[equip.TRINKET]);
					a_equip[equip.TRINKET] = shown;
					array_delete(inventory_t,shown_i,1);	
					shown = undefined;				 					
				break;		
		}	
	}
}

#endregion
  
#region // Кнопка продать

if shown!= undefined && (inven_shop = 0 || shown = a_equip[equip.ARMOR] || shown = a_equip[equip.WEAPON] || shown = a_equip[equip.TRINKET]) {  
	draw_rectangle(170,190,200,240,0);	
	if point_in_rectangle(mouse_x,mouse_y,170,190,200,240) && mouse_check_button_pressed(mb_left){
		switch(shown.place){
            case equip.WEAPON:
                if shown = a_equip[equip.WEAPON] a_equip[equip.WEAPON] = undefined; else array_delete(inventory_w,shown_i,1);	                  
				shown = undefined;	
                shown_i = undefined;
				break;
            case equip.ARMOR:
                if shown = a_equip[equip.ARMOR] a_equip[equip.ARMOR] = undefined; else array_delete(inventory_a,shown_i,1);	                  
				shown = undefined;	
                shown_i = undefined;		
				break;
			case equip.TRINKET: 					
                if shown = a_equip[equip.TRINKET] a_equip[equip.TRINKET] = undefined; else array_delete(inventory_t,shown_i,1);	                  
				shown = undefined;	
                shown_i = undefined;				 					
				break;		
		}	
	}
}



#endregion

#region // Кнопка купить 

if shown!= undefined && shown!= a_equip[equip.TRINKET] && shown!= a_equip[equip.ARMOR] && shown!= a_equip[equip.WEAPON] && inven_shop = 1{
    draw_rectangle(128,190,164,240,0);	
    if point_in_rectangle(mouse_x,mouse_y,128,190,164,240) && mouse_check_button_pressed(mb_left){
        switch(shown.place){
            case equip.WEAPON:
				    array_push(inventory_w,shown);
					array_delete(shop_w,shown_i,1);	
					shown = undefined;	
                    shown_i = undefined;
				break;
            case equip.ARMOR:
    				array_push(inventory_a,shown);
					array_delete(shop_a,shown_i,1);	
					shown = undefined;	
                    shown_i = undefined;
				break;
			case equip.TRINKET: 				
				    array_push(inventory_t,shown);
					array_delete(shop_t,shown_i,1);	
					shown = undefined;	
                    shown_i = undefined;
				break;		
		}	
    }
}

#endregion




#region экипировка

// Спрайты

if a_equip[equip.TRINKET] != undefined draw_sprite(a_equip[equip.TRINKET].sprite,0,432,80);	
if a_equip[equip.ARMOR]   != undefined draw_sprite(a_equip[equip.ARMOR].sprite,  0,392,80);
if a_equip[equip.WEAPON]  != undefined draw_sprite(a_equip[equip.WEAPON].sprite, 0,352,80);

// Описание Экипировки

if point_in_rectangle(mouse_x,mouse_y,336,64,368,96) && a_equip[equip.WEAPON]  != undefined {
    draw_set_alpha(0.25);
	draw_set_color(c_blue);
	draw_rectangle(336,64,368,96,false);
    draw_set_alpha(1);
    // показ предмета
    if mouse_check_button_pressed(mb_left){
    	shown = a_equip[equip.WEAPON]
    }
}
if point_in_rectangle(mouse_x,mouse_y,376,64,408,96) && a_equip[equip.ARMOR]   != undefined {
    draw_set_alpha(0.25);
	draw_set_color(c_blue);
	draw_rectangle(376,64,408,96,false);
    draw_set_alpha(1);
    // показ предмета
    if mouse_check_button_pressed(mb_left){
    	shown = a_equip[equip.ARMOR]
    }
}
if point_in_rectangle(mouse_x,mouse_y,416,64,448,96) && a_equip[equip.TRINKET] != undefined {
    draw_set_alpha(0.25);
	draw_set_color(c_blue);
	draw_rectangle(416,64,448,96,false);
    draw_set_alpha(1);
    // показ предмета
    if mouse_check_button_pressed(mb_left){
    	shown = a_equip[equip.TRINKET]
    }
}

#endregion
 
#region Описание предметов

if shown!= undefined {
    //Название
    draw_set_halign(fa_center);
    txt_outline(240,80,1,shown.color,shown.name);
    
    //текстовое Описание
    
    //Характеристики
    draw_set_halign(fa_left);
    switch(shown.place){
        case equip.WEAPON:
            
            txt_outline(168,112,1,c_white,"DMG:")
            txt_outline(208,112,1,c_white,shown.dmg);
            
            txt_outline(168,132,1,c_white,"CRT:")
            txt_outline(208,132,1,c_white,shown.crit);
                      
            #region Урон
            
            if shown != a_equip[equip.WEAPON] && a_equip[equip.WEAPON] != undefined{
                var _diff = a_equip[equip.WEAPON].dmg - shown.dmg;
                
                if _diff < 0 var _sign = "+";
                if _diff > 0 var _sign = "-";     
                
                if a_equip[equip.WEAPON].dmg > shown.dmg {var _color = c_red; }
                if a_equip[equip.WEAPON].dmg < shown.dmg {var _color = c_green;   }
                
                if _diff!=0 txt_outline_col(260,112,1,_color,string(abs(_diff)),_sign);
                         
            } 
            
            #endregion
            
            #region Крит
            
            if shown != a_equip[equip.WEAPON] && a_equip[equip.WEAPON] != undefined{
                var _diff = a_equip[equip.WEAPON].crit - shown.crit;
                
                if _diff < 0 var _sign = "+";
                if _diff > 0 var _sign = "-";     
                
                if a_equip[equip.WEAPON].crit > shown.crit {var _color = c_red; }
                if a_equip[equip.WEAPON].crit < shown.crit {var _color = c_green;   }
                
                if _diff!=0 txt_outline_col(260,132,1,_color,string(abs(_diff)),_sign);
            } 
            
            #endregion
                    
            break;
        case equip.ARMOR:
        
            txt_outline(168,112,1,c_white,"HP:")
            txt_outline(208,112,1,c_white,shown.hp);
                                  
            #region ХП
            
            if shown != a_equip[equip.ARMOR] && a_equip[equip.ARMOR] != undefined{
                var _diff = a_equip[equip.ARMOR].hp - shown.hp;
                
                if _diff < 0 var _sign = "+";
                if _diff > 0 var _sign = "-";     
                
                if a_equip[equip.ARMOR].hp > shown.hp {var _color = c_red; }
                if a_equip[equip.ARMOR].hp < shown.hp {var _color = c_green;   }
                
                txt_outline_col(260,112,1,_color,string(abs(_diff)),_sign);
            } 
            
            #endregion            
        
            break;
        case equip.TRINKET:
            
            txt_outline(168,112,1,c_white,"FIR:")
            txt_outline(208,112,1,c_white,shown.el_fire);
            
            txt_outline(168,132,1,c_white,"ICE:")
            txt_outline(208,132,1,c_white,shown.el_ice);
            
            txt_outline(168,152,1,c_white,"LGT:")
            txt_outline(208,152,1,c_white,shown.el_light);
            
            txt_outline(168,172,1,c_white,"WND:")
            txt_outline(208,172,1,c_white,shown.el_wind);
            
            #region Огонь
            
            if shown != a_equip[equip.TRINKET] && a_equip[equip.TRINKET] != undefined{
                var _diff = a_equip[equip.TRINKET].el_fire - shown.el_fire;
                
                if _diff < 0 var _sign = "+";
                if _diff > 0 var _sign = "-";     
                
                if a_equip[equip.TRINKET].el_fire > shown.el_fire {var _color = c_red; }
                if a_equip[equip.TRINKET].el_fire < shown.el_fire {var _color = c_green;   }
                
                if _diff!=0 txt_outline_col(260,112,1,_color,string(abs(_diff)),_sign);
                         
            } 
            
            #endregion
            
            #region Лед
            
            if shown != a_equip[equip.TRINKET] && a_equip[equip.TRINKET] != undefined{
                var _diff = a_equip[equip.TRINKET].el_ice - shown.el_ice;
                
                if _diff < 0 var _sign = "+";
                if _diff > 0 var _sign = "-";     
                
                if a_equip[equip.TRINKET].el_ice > shown.el_ice {var _color = c_red; }
                if a_equip[equip.TRINKET].el_ice < shown.el_ice {var _color = c_green;   }
                
                if _diff!=0 txt_outline_col(260,132,1,_color,string(abs(_diff)),_sign);
            } 
            
            #endregion
            
            #region Молния
            
            if shown != a_equip[equip.TRINKET] && a_equip[equip.TRINKET] != undefined{
                var _diff = a_equip[equip.TRINKET].el_light - shown.el_light;
                
                if _diff < 0 var _sign = "+";
                if _diff > 0 var _sign = "-";     
                
                if a_equip[equip.TRINKET].el_light > shown.el_light {var _color = c_red; }
                if a_equip[equip.TRINKET].el_light < shown.el_light {var _color = c_green;   }
                
                if _diff!=0 txt_outline_col(260,152,1,_color,string(abs(_diff)),_sign);
                         
            } 
            
            #endregion
            
            #region Ветер
            
            if shown != a_equip[equip.TRINKET] && a_equip[equip.TRINKET] != undefined{
                var _diff = a_equip[equip.TRINKET].el_wind - shown.el_wind;
                
                if _diff < 0 var _sign = "+";
                if _diff > 0 var _sign = "-";     
                
                if a_equip[equip.TRINKET].el_wind > shown.el_wind {var _color = c_red; }
                if a_equip[equip.TRINKET].el_wind < shown.el_wind {var _color = c_green;   }
                
                if _diff!=0 txt_outline_col(260,172,1,_color,string(abs(_diff)),_sign);
            } 
            
            #endregion
            
            break;
    }
}
#endregion

#region Статы Экипировки

if a_equip[equip.WEAPON] != undefined {
    txt_outline(344,108-2,1,c_white,"ATK:");
    txt_outline(344,124-2,1,c_white,"CRT:");
    
    txt_outline(384,108-2,1,c_white,a_equip[equip.WEAPON].dmg);
    txt_outline(384,124-2,1,c_white,a_equip[equip.WEAPON].crit);    
    
}

if a_equip[equip.ARMOR] != undefined {
    txt_outline(344,140-2,1,c_white,"HP :"); 
    txt_outline(384,140-2,1,c_white,a_equip[equip.ARMOR].hp); 
}

if a_equip[equip.TRINKET] != undefined {
    txt_outline(344,156-2,1,c_white,"FIR:");
    txt_outline(344,172-2,1,c_white,"ICE:");
    txt_outline(344,188-2,1,c_white,"LGT:");
    txt_outline(344,204-2,1,c_white,"WND:");
    
    txt_outline(384,156-2,1,c_white,a_equip[equip.TRINKET].el_fire);
    txt_outline(384,172-2,1,c_white,a_equip[equip.TRINKET].el_ice);
    txt_outline(384,188-2,1,c_white,a_equip[equip.TRINKET].el_light);
    txt_outline(384,204-2,1,c_white,a_equip[equip.TRINKET].el_wind);
}

#endregion


// выход

draw_rectangle(16,room_height-64,32,room_height-32,0);
if point_in_rectangle(mouse_x,mouse_y,6,room_height-64,32,room_height-32) && mouse_check_button_pressed(mb_left){
    invOn = 0;
    page = 0;
    shown = undefined;
    inven_shop = 0;
	if instance_exists(obj_global_map_controller) obj_global_map_controller.control = 1;
}

}
#endregion

