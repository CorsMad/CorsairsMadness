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

function txt_outline_col(_x,_y,offset,color,text1,_sign){
    draw_set_color(c_black);
	draw_text(_x+offset,_y,_sign + text1);
	draw_text(_x-offset,_y,_sign + text1);
	draw_text(_x,_y+offset,_sign + text1);
	draw_text(_x,_y-offset,_sign + text1);
	
	draw_text(_x+offset,_y+offset,_sign + text1);
	draw_text(_x-offset,_y+offset,_sign + text1);
	draw_text(_x-offset,_y+offset,_sign + text1);
	draw_text(_x-offset,_y-offset,_sign + text1);

    draw_set_color(color); 
    draw_text(_x,_y,_sign + text1);

}

function txt_outline_sprite(_x,_y,offset,color,text){
	draw_set_color(c_black);
    text_buy = "buy";
    
	draw_text(_x+40+offset,_y,text);
	draw_text(_x+40-offset,_y,text);
	draw_text(_x+40,_y+offset,text);
	draw_text(_x+40,_y-offset,text);
	
	draw_text(_x+40+offset,_y+offset,text);
	draw_text(_x+40-offset,_y+offset,text);
	draw_text(_x+40-offset,_y+offset,text);
	draw_text(_x+40-offset,_y-offset,text);
	
	
    
    draw_text(_x+offset,_y,text_buy);
	draw_text(_x-offset,_y,text_buy);
	draw_text(_x,_y+offset,text_buy);
	draw_text(_x,_y-offset,text_buy);
	
	draw_text(_x+offset,_y+offset,text_buy);
	draw_text(_x-offset,_y+offset,text_buy);
	draw_text(_x-offset,_y+offset,text_buy);
	draw_text(_x-offset,_y-offset,text_buy);
    
    draw_set_color(color)
    draw_text(_x,_y,text_buy);
    if shown != undefined {
        if shown.price <= obj_container_global.gold draw_set_color(color); else {
        draw_set_color(c_red)}        
    }
    
    draw_sprite(spr_gold_coing,0,_x+32,_y+5.5);
    //draw_sprite(spr_gold_coing,0,_x-16-_str_w/2,_y+5.5);
	
    
	draw_text(_x+40,_y,text);
    
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