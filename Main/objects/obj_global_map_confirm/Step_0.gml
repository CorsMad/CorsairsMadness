/// @description Insert description here
// You can write your code in this editor

player_input();
var sl = keyboard_check_pressed(vk_left)
var sr = keyboard_check_pressed(vk_right)
var su = keyboard_check_pressed(vk_up)
var sd = keyboard_check_pressed(vk_down)
var saccept = keyboard_check_pressed(vk_space) || keyboard_check_pressed(vk_enter)
image_index = select;


if t < 10 t++;

if t > 5
{
    if (key_left  || sl)  select = 0;
    if (key_right || sr)  select = 1;
    
    if key_jump || key_attack || saccept
    {
        switch(select)
        {
            case 0:
                switch(obj_globalmap_contoller.island)
                {
                    case 1:
                        obj_global_map_cloud_far.start = 1;
                        obj_global_map_cloud_close.start = 1;
                        obj_transition_on_map.on = 1;   
                        obj_transition_on_map.travel_island = 1;
                        obj_global_map_map.start = 1;
                        obj_globalmap_cloud.start = 0;
                        instance_destroy(obj_globalmap_contoller);
                        instance_destroy();
                        break;
                    case 2:
                        obj_global_map_cloud_far.start = 1;
                        obj_global_map_cloud_close.start = 1;
                        obj_transition_on_map.on = 1; 
                        obj_transition_on_map.travel_island = 2;
                        obj_global_map_map.start = 1;
                        obj_globalmap_cloud.start = 0;
                        instance_destroy(obj_globalmap_contoller);
                        instance_destroy();
                        break;
                    case 3:
                        obj_global_map_cloud_far.start = 1;
                        obj_global_map_cloud_close.start = 1;
                        obj_transition_on_map.on = 1; 
                        obj_transition_on_map.travel_island = 3;
                        obj_global_map_map.start = 1;
                        obj_globalmap_cloud.start = 0;
                        instance_destroy(obj_globalmap_contoller);
                        instance_destroy();
                        break;
                    case 4:
                        obj_global_map_cloud_far.start = 1;
                        obj_global_map_cloud_close.start = 1;
                        obj_transition_on_map.on = 1;                        
                        obj_global_map_map.start = 1;
                        obj_transition_on_map.travel_island = 4;
                        obj_globalmap_cloud.start = 0;
                        instance_destroy(obj_globalmap_contoller);
                        instance_destroy();
                        break;
                }
                break;
            case 1:
                obj_globalmap_contoller.t = 0;
                instance_destroy();                
                break;
        }
    }
}