/// @description Insert description here
// You can write your code in this editor
image_speed = 0;
sprite_index = spr_ctsn_merch_menu_main;

image_alpha = 0;

x = room_width/2;
y = room_height/2;

state = 0;

#region MENU STATES
/*

0 - main menu
1 - corsair items
2 - axe upgrades
3 - boat menu

*/

#endregion


// создание переключателя
a = 0;
delay = 0;
instance_create_depth(112,-32,depth-1,obj_ctscn_trailer_merchant_menu_selector)