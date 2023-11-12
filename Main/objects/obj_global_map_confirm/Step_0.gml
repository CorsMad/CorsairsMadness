/// @description Insert description here
// You can write your code in this editor

player_input();

image_index = select;


if t < 10 t++;

if t > 5
{
    if ((key_left ) && select = 1)  {select = 0;;fnc_snd_play_over(snd_menu_select);} 
    if ((key_right) && select = 0)  {select = 1;;fnc_snd_play_over(snd_menu_select);} 
    
    if key_jump || key_attack 
    {
        switch(select)
        {
            case 0:
                fnc_snd_play_over(snd_menu_accept); 
                fnc_msc_stop_play_slow();
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
                fnc_snd_play_over(snd_menu_accept);
                obj_globalmap_contoller.t = 0;
                instance_destroy();                
                break;
        }
    }
}