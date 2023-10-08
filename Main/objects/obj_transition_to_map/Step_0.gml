/// @description Insert description here
// You can write your code in this editor



t++;
if t > 50 
{
	//
    if image_alpha < 1 image_alpha +=0.01;   
}
if t = 150{
    fnc_msc_stop_play();   
}
if t >=200
{
    fnc_msc_stop_play();
    if global.completed_JF2= 1 && global.completed_PD2= 1 && global.completed_PG2= 1 && global.completed_PL2= 1 && global.completed_PS2= 1{
        room_goto(GlobalMapLast); 
    } else room_goto(GlobalMap);
    
    instance_destroy(obj_Player);
}
