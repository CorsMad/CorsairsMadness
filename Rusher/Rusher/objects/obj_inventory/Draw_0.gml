/// @description Insert description here
// You can write your code in this editor
draw_set_alpha(0.8)
draw_set_color(c_black)
draw_rectangle(0,0,room_width,room_height,0);
draw_set_alpha(1);

draw_sprite_stretched(spr_info_bord,0,128,32,sprite_get_width(spr_info_bord)*2,sprite_get_height(spr_info_bord)*3);
draw_sprite_stretched(spr_info_bord,0,256,32,sprite_get_width(spr_info_bord)*2,sprite_get_height(spr_info_bord)*3);



for (var i = 0; i < array_length(inventory); i++) {
	//var sprite = inventory[i].sprite
	var itemX = 32+(i mod menuWidth) * itemSeparation
	var itemY = 32+(i div menuWidth) * itemSeparation;

    if inventory[i] != nothing {
		//draw_sprite(sprite,0,itemX,itemY)	
		draw_sprite(inventory[i].sprite,0,itemX,itemY)	
	}
	
	
	// проверка наведения мыши
	if point_in_rectangle(mouse_x,mouse_y,itemX -itemXY,itemY-itemXY,itemX +itemXY,itemY+itemXY) {
		draw_set_alpha(0.25);
		draw_set_color(c_blue);
		draw_rectangle(itemX-itemXY,itemY-itemXY,itemX +itemXY,itemY+itemXY,false);
		
		if mouse_check_button_pressed(mb_left){
			shown = inventory[i]
			shown_i = i;
		}
		
		// нарисовать описание
		draw_set_alpha(1);			
		draw_set_color(c_white)
		
	}  
}
if shown!= undefined {
	txt_outline(128,32,1,c_yellow,shown.name);	
	//txt_item_desc_weapon_stat(128,48,shown.desc);
	//txt_outline(128,48,1,c_white,shown.desc);	
}

// Кнопка экипировать
if shown!= undefined {
	draw_rectangle(128,190,164,240,0);	
	if point_in_rectangle(mouse_x,mouse_y,128,190,164,240) && mouse_check_button_pressed(mb_left){
		switch(shown.place){
			case equip.HEAD: 				
				if obj_player_equip.equip_item[equip.HEAD] != undefined {
					array_push(inventory, obj_player_equip.equip_item[equip.HEAD]);
				}
					obj_player_equip.equip_item[equip.HEAD] = shown;
					array_delete(inventory,shown_i,1);	
					shown = undefined;				 					
				break;
			case equip.ARMOR:
				if obj_player_equip.equip_item[equip.ARMOR] != undefined {
					array_push(inventory, obj_player_equip.equip_item[equip.ARMOR]);
				}
					obj_player_equip.equip_item[equip.ARMOR] = shown;
					array_delete(inventory,shown_i,1);	
					shown = undefined;			
				break;
			case equip.WEAPON:
				if obj_player_equip.equip_item[equip.WEAPON] != undefined {
					array_push(inventory, obj_player_equip.equip_item[equip.WEAPON]);
				}
					obj_player_equip.equip_item[equip.WEAPON] = shown;
					array_delete(inventory,shown_i,1);	
					shown = undefined;	
				break;
		}
		
		
	}
}

// экипировать предмет



// экипировка

if instance_exists(obj_player_equip) {
	if obj_player_equip.equip_item[equip.HEAD] != undefined draw_sprite(obj_player_equip.equip_item[equip.HEAD].sprite,0,320,32);	
	if obj_player_equip.equip_item[equip.ARMOR] != undefined draw_sprite(obj_player_equip.equip_item[equip.ARMOR].sprite,0,320,64);
	if obj_player_equip.equip_item[equip.WEAPON] != undefined draw_sprite(obj_player_equip.equip_item[equip.WEAPON].sprite,0,320,96);
}


// выход
draw_rectangle(16,room_height-64,32,room_height-32,0);
if point_in_rectangle(mouse_x,mouse_y,6,room_height-64,32,room_height-32) && mouse_check_button_pressed(mb_left){
	instance_destroy(obj_player_equip);
	instance_destroy();
	if instance_exists(obj_global_map_controller) obj_global_map_controller.control = 1;
}