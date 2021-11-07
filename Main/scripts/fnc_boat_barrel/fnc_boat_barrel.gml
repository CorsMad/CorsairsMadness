// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function fnc_boat_barrel(timer_cap,power_obj,power_barrel,state)
{
    // Если не подобрал
        if t = timer_cap && instance_exists(power_obj)
        {
            with(power_obj)
            {
                if place_meeting(x,y,obj_trigger_boat_level_global_destroyer)
                {
                    obj_sp_boat_level.state = state;
                    obj_sp_boat_level.t = 0;
                    instance_destroy();
                }
            }
        }
        // Если подобрал пистолет
        
        if power_obj = obj_boat_power_fastpistol
        {
            if t = timer_cap && obj_Player_boat.fastshoot_count!= 0
            {
                obj_sp_boat_level.state = state;
                t = 0;
            }
        }
        // Если подобрал пушку
        
        if power_obj = obj_boat_power_cannon
        {
            if t = timer_cap && obj_Player_boat.cannonshoot_count!= 0
            {
                obj_sp_boat_level.state = state;
                t = 0;
            }
        }
        // Если бочка не взорвалась
        if t = timer_cap && instance_exists(power_barrel)
        {
            with(power_barrel)
            {
                if place_meeting(x,y,obj_trigger_boat_level_global_destroyer)
                {
                    instance_destroy();
                    obj_sp_boat_level.state = state;
                    obj_sp_boat_level.t = 0; 
                }
            }
        } 
}