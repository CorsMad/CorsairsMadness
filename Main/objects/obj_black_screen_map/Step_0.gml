a++;
if a = 100 {
    fnc_msc_play(msc_global_map);
    obj_global_map_cloud_close_smallmap.start = 0;
    var p = instance_create_depth(0,0,0,obj_pause_controller);
        p.state = 2;
        
    switch(room_name){
        case "GlobalMapPrologueJungle":
            instance_create_depth(0,0,0,obj_map_prologue_controller_jungle);
            break;
        case "GlobalMapPrologueDesert":
            instance_create_depth(0,0,0,obj_map_controller_desert);
            break;
        case "GlobalMapPrologueSnow":
            instance_create_depth(0,0,0,obj_map_controller_snow);
            break;
        case "GlobalMapPrologueShadow":
            instance_create_depth(0,0,0,obj_map_controller_shadow);
            break;
        case "GlobalMapPrologueLava":
            instance_create_depth(0,0,0,obj_map_controller_lava);
            break;
    }   
}

if a > 100
{
    alpha -= 0.075;
    if alpha <= 0 
    {
    	instance_destroy();	
    }	
}