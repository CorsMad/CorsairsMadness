// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function fnc_endurance_j_spwn_bird_hor_close(){
    if obj_Player.x >= room_width/2 instance_create_depth(-32,obj_Player.y-16,0,obj_bird_horizontal_fast_r);
    if obj_Player.x < room_width/2 instance_create_depth(480+32,obj_Player.y-16,0,obj_bird_horizontal_fast_l);

}
function fnc_endurance_j_spwn_bird_hor_far(){
    if obj_Player.x < room_width/2 instance_create_depth(-32,obj_Player.y-16,0,obj_bird_horizontal_fast_r);
    if obj_Player.x >= room_width/2 instance_create_depth(480+32,obj_Player.y-16,0,obj_bird_horizontal_fast_l);

}
function fnc_endurance_j_spwn_bird_wave_far(){
    if obj_Player.x < room_width/2 instance_create_depth(-32,obj_Player.y-16,0,obj_bird_horizontal_waving_r);
    if obj_Player.x >= room_width/2 instance_create_depth(480+32,obj_Player.y+32,0,obj_bird_horizontal_waving_l);

}
function fnc_endurance_j_spwn_bird_wave_close(){
    if obj_Player.x >= room_width/2 instance_create_depth(-32,obj_Player.y-16,0,obj_bird_horizontal_waving_r);
    if obj_Player.x < room_width/2 instance_create_depth(480+32,obj_Player.y+32,0,obj_bird_horizontal_waving_l);

}

