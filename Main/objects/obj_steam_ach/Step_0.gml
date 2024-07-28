/// @description Insert description here
// You can write your code in this editor

steam_update();

if steam_is_screenshot_requested()
    {
	var number = irandom_range(100000,999999)
    var file = "CorsairsMadness_scr"+string(number)+".png";
    screen_save(file)
    steam_send_screenshot(file, window_get_width(), window_get_height());
    }