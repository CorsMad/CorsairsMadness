fnc_msc_start_checkpoint(msc_village_snow);
global.PlayerTransition = 2;
scr_save_progress();

if global.completed_PS2 = 0 {
    instance_create_depth(0,0,0,obj_weather_snow_n);
    var n = instance_create_depth(0,0,-100,obj_weather_snowstorm_screen_n);
    n.image_xscale = 14;
    n.image_yscale = 4.25;
}