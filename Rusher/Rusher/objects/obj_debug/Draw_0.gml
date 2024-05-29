//draw_set_color(c_black)
//draw_text(room_width/2,64,obj_inventory.shown);

if (show_debug_overlay(false) && keyboard_check_pressed(ord("`"))) show_debug_overlay(true);
if (show_debug_overlay(true) && keyboard_check_pressed(ord("`"))) show_debug_overlay(false);