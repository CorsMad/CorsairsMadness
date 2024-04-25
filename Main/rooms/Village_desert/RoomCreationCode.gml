fnc_msc_start_checkpoint(msc_village_desert);
global.PlayerTransition = 1;
scr_save_progress();

if global.completed_PD2 = 0 {
    for(var v = 0;v<500;v+=1)
    {
    	var s = instance_create_depth(random_range(camera_get_view_x(view_camera[0]),camera_get_view_x(view_camera[0])+480),random_range(0,room_height),101,obj_weather_sand);
        s.pos = 0;
    }
    var ss = instance_create_depth(0,0,-100,obj_weather_sandstorm_screen);
    ss.image_xscale = 14;
    ss.image_yscale = 3.75;   
    
    var w = instance_create_depth(0,0,0,obj_weather_sandstorm)
    w.pos = 0;
    
	// Блоки
	
	instance_create_depth (32+random_range(-48,64),48+random_range(0,16),100,choose(obj_destructable_block_big,obj_destructable_block_medium));
	instance_create_depth(192+random_range(-48,64),48+random_range(0,16),100,choose(obj_destructable_block_big,obj_destructable_block_medium));
	instance_create_depth(352+random_range(-48,64),48+random_range(0,16),100,choose(obj_destructable_block_big,obj_destructable_block_medium));
	instance_create_depth(512+random_range(-48,64),48+random_range(0,16),100,choose(obj_destructable_block_big,obj_destructable_block_medium));
	instance_create_depth(672+random_range(-48,64),48+random_range(0,32),100,choose(obj_destructable_block_big,obj_destructable_block_medium));
	instance_create_depth(832+random_range(-48,64),48+random_range(0,32),100,choose(obj_destructable_block_big,obj_destructable_block_medium));
	
	
}   else {
    instance_create_depth(409,193,550,obj_sand_village_fountain)
}



