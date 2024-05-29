/// @description Insert description here
// You can write your code in this editor

for (var i = 0; i < image_number; i++) {
    draw_sprite(spr_globalmap,i,480*i+spr_x,0);
	draw_sprite(spr_globalmap_button,but_spr,480*i+240+spr_x,135);
}

//draw_self();

draw_text(96,32,"move: "+string(move));
draw_text(96,48,"new_dest: "+string(new_dest));
draw_text(96,64,"spr_x: "+string(spr_x));
draw_text(96,80,"x: "+string(x));
				