/// @description Insert description here
// You can write your code in this editor


//if skip != 0
//{
	#region skip
		draw_set_alpha(alpha);

	    draw_set_halign(fa_center);
    
		draw_set_color(c_black);
	    draw_text_scribble(63-1  ,234,skip_txt);
	    draw_text_scribble(63-1  ,234-1,skip_txt);
	    draw_text_scribble(63    ,234-1,skip_txt);
	    draw_text_scribble(63+1  ,234-1,skip_txt);
	    draw_text_scribble(63+1  ,234,skip_txt);
	    draw_text_scribble(63+1  ,234+1,skip_txt);
	    draw_text_scribble(63    ,234+1,skip_txt);
	    draw_text_scribble(63-1  ,234+1,skip_txt);
	
		draw_set_color(c_white)
		
	    draw_text_scribble(63,234,skip_txt);
		
		draw_set_halign(fa_left) 
		draw_sprite_ext(spr_skip_frame,0,18,250,1,1,0,c_white,alpha);
		draw_sprite_stretched_ext(spr_skip_line,0,23,255,(skip_t/skip_t_max)*80,8,c_white,alpha);
	#endregion
	
	
//}

draw_set_alpha(1)
draw_self();
draw_set_halign(fa_center);

var gap = 16;

for (var i = 0; i < array_length(menu[0]); ++i) {
	draw_text_scribble(354,(start_y + gap*i) + move_y, menu[0, i]);	
}

//draw_sprite(spr_credits_logo,0,354,96);
draw_sprite_ext(spr_credits_logo,0,354,310+move_y,0.25,0.25,0,c_white,1);