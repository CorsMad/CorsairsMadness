// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function txt_outline(_x,_y,offset,color,text){
	draw_set_color(c_black);
	draw_text(_x+offset,_y,text);
	draw_text(_x-offset,_y,text);
	draw_text(_x,_y+offset,text);
	draw_text(_x,_y-offset,text);
	
	draw_text(_x+offset,_y+offset,text);
	draw_text(_x-offset,_y+offset,text);
	draw_text(_x-offset,_y+offset,text);
	draw_text(_x-offset,_y-offset,text);
	
	draw_set_color(color);
	draw_text(_x,_y,text);
}


function txt_item_desc_weapon_stat(x_m,y_m,_desc_txt){	
	var player_weapon = obj_player_equip.equip_item[equip.WEAPON];
	if  player_weapon!= undefined && shown.place = equip.WEAPON {
		if player_weapon.dmg > shown.dmg {			
			txt_outline(x_m,y_m,1,c_red,_desc_txt);
			} else 
		if player_weapon.dmg < shown.dmg {
			txt_outline(x_m,y_m,1,c_green,_desc_txt);			
			} else txt_outline(x_m,y_m,1,c_white,_desc_txt);	
				
	} else txt_outline(x_m,y_m,1,c_white,_desc_txt);	
}