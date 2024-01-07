

#region skip
		draw_set_alpha(alpha);

	    draw_set_halign(fa_center);
    
		draw_set_color(c_black);
	    draw_text_scribble(58-1  ,234,skip_txt);
	    draw_text_scribble(58-1  ,234-1,skip_txt);
	    draw_text_scribble(58    ,234-1,skip_txt);
	    draw_text_scribble(58+1  ,234-1,skip_txt);
	    draw_text_scribble(58+1  ,234,skip_txt);
	    draw_text_scribble(58+1  ,234+1,skip_txt);
	    draw_text_scribble(58    ,234+1,skip_txt);
	    draw_text_scribble(58-1  ,234+1,skip_txt);
	
		draw_set_color(c_white)
		
	    draw_text_scribble(58,234,skip_txt);
		
		draw_set_halign(fa_left) 
		draw_sprite_ext(spr_skip_frame,0,13,250,1,1,0,c_white,alpha);
		draw_sprite_stretched_ext(spr_skip_line,0,18,255,(skip_t/skip_t_max)*80,8,c_white,alpha);
#endregion
	
	
//}

draw_set_alpha(1)
draw_set_halign(fa_center);

var gap = 16;

for (var i = 0; i < array_length(menu[0]); ++i) {
	draw_text_scribble(room_width/2,(start_y + gap*i) + move_y, menu[0, i]);	
}

//draw_sprite(spr_credits_logo,0,354,96);
draw_sprite_ext(spr_credits_logo,0,room_width/2,310+move_y,0.25,0.25,0,c_white,1);