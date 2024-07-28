/// @description Insert description here
// You can write your code in this editor





for (var i = 0; i < image_number; i++) {
    draw_sprite(spr_globalmap,i,480*i+spr_x,0);	
}

// Граница
draw_set_alpha(0.2);
draw_sprite(spr_globalmap_bord,0,0,208)
draw_set_alpha(1)
draw_sprite(spr_globalmap_button,but_spr,240,240);

// Инвентарь
draw_sprite(spr_globalmap_inventory,onoff_inv,32,32);
if move = 0 && control = 1 && obj_inventory.invOn = 0  {
	if point_in_rectangle(mouse_x,mouse_y,32-21,32-21,32+21,32+21) {
		onoff_inv = 1
		if mouse_check_button_pressed(mb_left){
			control = 0;
			move = 0;
	        obj_inventory.invOn = 1;
		}
	} else onoff_inv = 0;
}


//draw_self();

draw_text(96,32,"move: "+string(move));
draw_text(96,48,"new_dest: "+string(new_dest));
draw_text(96,64,"spr_x: "+string(spr_x));
draw_text(96,80,"x: "+string(x));
				