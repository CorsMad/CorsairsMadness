/// @description Insert description here
// You can write your code in this editor

// Кнопка PLAY
draw_sprite(spr_menu_play,onoff_play,240,208)
if point_in_rectangle(mouse_x,mouse_y,240-42,208-42,240+42,208+42){
	onoff_play = 1;
	if mouse_check_button_pressed(mb_left){
		var nlvl = instance_create_depth(0,0,depth-10000,obj_transition_bs_to_level);
		nlvl.rm = globalmap;
	}
} else onoff_play = 0;

// Кнопка MSC
draw_sprite(spr_msc_onoff,msc,432,48)
if point_in_rectangle(mouse_x,mouse_y,432-21,48-21,432+21,48+21) && mouse_check_button_pressed(mb_left){
	if msc = 1 msc = 0 else msc = 1;
}

// Кнопка SFX
