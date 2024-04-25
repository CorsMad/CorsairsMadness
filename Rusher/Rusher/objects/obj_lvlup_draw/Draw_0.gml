/// @description Insert description here
// You can write your code in this editor

draw_set_color(c_black);
draw_set_alpha(0.75);
draw_rectangle(0,0,room_width,room_height,false);

draw_set_alpha(1)
draw_set_color(c_white);
// наведение

// левая колонка


if point_in_rectangle(mouse_x,mouse_y,32,32,160,240) {
	draw_sprite(spr_lvlup_block,1,32,32)
	if mouse_check_button_pressed(mb_left) {
		scr_lvlup_action(left_n);
		obj_battle_info.player_xp = 0;
		obj_player_stats.level+=1;
		obj_enemy_spawner_parent.state+=0.5;
		instance_destroy()	
	}
} else draw_sprite(spr_lvlup_block,0,32,32)

// средняя колонка

if point_in_rectangle(mouse_x,mouse_y,176,32,304,240) {
	draw_sprite(spr_lvlup_block,1,176,32)
	if mouse_check_button_pressed(mb_left) {
		scr_lvlup_action(middle_n);
		obj_battle_info.player_xp = 0;
		obj_player_stats.level+=1;
		obj_enemy_spawner_parent.state+=0.5;
		instance_destroy()	
	}
} else draw_sprite(spr_lvlup_block,0,176,32)

// правая колонка

if point_in_rectangle(mouse_x,mouse_y,320,32,448,240) {
	draw_sprite(spr_lvlup_block,1,320,32)
	if mouse_check_button_pressed(mb_left) {
		scr_lvlup_action(right_n);
		obj_battle_info.player_xp = 0;
		obj_player_stats.level+=1;
		obj_enemy_spawner_parent.state+=0.5;
		instance_destroy()	
	}
} else draw_sprite(spr_lvlup_block,0,320,32)

draw_set_color(c_white);
draw_set_alpha(1);
draw_set_halign(fa_center);
draw_set_font(fnt_pixel);

//левый

draw_text(32+64,64,left_n);
draw_text(32+64,96,left_d);

//средний

draw_text(176+64,64,middle_n);
draw_text(176+64,96,middle_d);

//правый

draw_text(320+64,64,right_n);
draw_text(320+64,96,right_d);