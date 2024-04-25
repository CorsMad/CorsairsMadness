
	
//}

draw_set_alpha(1)
draw_set_halign(fa_center);

var gap = 16;

for (var i = 0; i < array_length(menu[0]); ++i) {
	draw_text_scribble(room_width/2,(start_y + gap*i) + move_y, menu[0, i]);	
}

//draw_sprite(spr_credits_logo,0,354,96);
draw_sprite_ext(spr_credits_logo,0,room_width/2,310+move_y,0.25,0.25,0,c_white,1);