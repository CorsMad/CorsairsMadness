/// @description Insert description here
// You can write your code in this editor

if !instance_exists(obj_money1) &&
!instance_exists(obj_money10) && 
!instance_exists(obj_money20){
    fnc_snd_play_onetime(msc_level_end);
    instance_create_depth(0,0,0,obj_room_transition_black_screen_s1_stats);
    instance_destroy();
}











