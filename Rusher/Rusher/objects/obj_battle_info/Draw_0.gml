/// @description Insert description here
// You can write your code in this editor
draw_rectangle_color(96,144,384,176,c_black,c_black,c_black,c_black,0)
draw_sprite(spr_battle_info,0,0,0);

//359

//ОТРИСОВКА HP ИГРОКА
draw_sprite_stretched(spr_enemy_hp_bar,0,66,220,width*(player_hp/player_hp_max),12);
//ОТРИСОВКА XP ИГРОКА
draw_sprite_stretched(spr_enemy_attack_bar,0,66,242,width*(player_xp/player_xp_max),12)
// ОТРИСОВКА ХП ВРАГА
draw_sprite_stretched(spr_enemy_hp_bar,0,306,220,width*(enemy_hp/enemy_hp_max),12);
// ОТРИСОВКА УРОНА ВРАГА
draw_sprite_stretched(spr_enemy_attack_bar,0,306,242,width*(enemy_attack/enemy_attack_max),12)

// ОТРИСОВКА НАЗВАНИЙ
draw_set_halign(fa_left);
draw_set_font(fnt_pixel);

#region игрок
draw_text_color(14+1,200,  "player",c_black,c_black,c_black,c_black,1);
draw_text_color(14-1,200,  "player",c_black,c_black,c_black,c_black,1);
draw_text_color(14,200+1,  "player",c_black,c_black,c_black,c_black,1);
draw_text_color(14,200-1,  "player",c_black,c_black,c_black,c_black,1);
draw_text_color(14+1,200-1,"player",c_black,c_black,c_black,c_black,1);
draw_text_color(14-1,200+1,"player",c_black,c_black,c_black,c_black,1);
draw_text_color(14+1,200+1,"player",c_black,c_black,c_black,c_black,1);
draw_text_color(14-1,200-1,"player",c_black,c_black,c_black,c_black,1);
draw_text_color(14,200,    "player",c_white,c_white,c_white,c_white,1);
#endregion

#region враг
draw_text_color(251+1,200,  enemy_name,c_black,c_black,c_black,c_black,1);
draw_text_color(251-1,200,  enemy_name,c_black,c_black,c_black,c_black,1);
draw_text_color(251,  200+1,enemy_name,c_black,c_black,c_black,c_black,1);
draw_text_color(251,  200-1,enemy_name,c_black,c_black,c_black,c_black,1);
draw_text_color(251+1,200-1,enemy_name,c_black,c_black,c_black,c_black,1);
draw_text_color(251-1,200+1,enemy_name,c_black,c_black,c_black,c_black,1);
draw_text_color(251+1,200+1,enemy_name,c_black,c_black,c_black,c_black,1);
draw_text_color(251-1,200-1,enemy_name,c_black,c_black,c_black,c_black,1);
draw_text_color(251,  200,  enemy_name,c_white,c_white,c_white,c_white,1);
#endregion

#region ОТРИСОВКА РЕЗИСТОВ/СЛАБОСТЕЙ

if instance_exists(obj_enemy_parent){
//crit
switch(obj_enemy_parent.EnemyCreator.weak_res_crit){
	case -1:
		draw_sprite(spr_icon_crit,0,345,5);	
		break;
	case 1:
		draw_sprite(spr_icon_crit,0,155,5);
		draw_sprite_stretched_ext(spr_enemy_weakness_dark,0,155,5,width*(obj_enemy_parent.weak_crit_t/2200),18,c_white,0.8)
		if obj_enemy_parent.weak_crit_t = 1 instance_create_depth(155,5,-6,obj_icon_info_flash);
		break;
}
//fire
switch(obj_enemy_parent.EnemyCreator.weak_res_fire){
	case -1:
		draw_sprite(spr_icon_fire,0,371,5);	
		break;
	case 1:
		draw_sprite(spr_icon_fire,0,181,5);
		draw_sprite_stretched_ext(spr_enemy_weakness_dark,0,181,5,width*(obj_enemy_parent.weak_fire_t/2200),18,c_white,0.8)
		if obj_enemy_parent.weak_fire_t = 1 instance_create_depth(181,5,-6,obj_icon_info_flash);
		break;
}
//ice
switch(obj_enemy_parent.EnemyCreator.weak_res_ice){
	case -1:
		draw_sprite(spr_icon_ice,0,397,5);	
		break;
	case 1:
		draw_sprite(spr_icon_ice,0,207,5);
		draw_sprite_stretched_ext(spr_enemy_weakness_dark,0,207,5,width*(obj_enemy_parent.weak_ice_t/2200),18,c_white,0.8)
		if obj_enemy_parent.weak_ice_t = 1 instance_create_depth(207,5,-6,obj_icon_info_flash);
		break;
}
//light
switch(obj_enemy_parent.EnemyCreator.weak_res_light){
	case -1:
		draw_sprite(spr_icon_light,0,423,5);	
		break;
	case 1:
		draw_sprite(spr_icon_light,0,233,5);
		draw_sprite_stretched_ext(spr_enemy_weakness_dark,0,233,5,width*(obj_enemy_parent.weak_light_t/2200),18,c_white,0.8)
		if obj_enemy_parent.weak_light_t = 1 instance_create_depth(233,5,-6,obj_icon_info_flash);
		break;
}
//wind
switch(obj_enemy_parent.EnemyCreator.weak_res_wind){
	case -1:
		draw_sprite(spr_icon_wind,0,449,5);	
		break;
	case 1:
		draw_sprite(spr_icon_wind,0,259,5);
		draw_sprite_stretched_ext(spr_enemy_weakness_dark,0,259,5,width*(obj_enemy_parent.weak_wind_t/2200),18,c_white,0.8)
		if obj_enemy_parent.weak_wind_t = 1 instance_create_depth(259,5,-6,obj_icon_info_flash);
		break;
}

}

#endregion

#region ОТРИСОВКА ВЫХОДА

draw_set_color(c_black)
draw_sprite(spr_icon_menu_back_to_map,0,11,4);
if point_in_rectangle(mouse_x,mouse_y,11,4,11+20,4+20) {
	if to_map = 0 && mouse_check_button_pressed(mb_left){
		to_map = 1;	
	}
}
if to_map = 1 {
	draw_set_alpha(0.5)
	draw_rectangle(12,4,12+17,4+18,0);
	draw_set_alpha(1)
	
	// НЕТ
	draw_sprite(spr_icon_menu_no,0,11,27)
	if point_in_rectangle(mouse_x,mouse_y,11,27,11+20,27+20) && mouse_check_button_pressed(mb_left){
		to_map = 0;
	}
	// ДА
	draw_sprite(spr_icon_menu_yes,0,35,27)
	if point_in_rectangle(mouse_x,mouse_y,35,27,35+20,27+20) && mouse_check_button_pressed(mb_left){
		room_goto(globalmap);		
	}
}	








#endregion