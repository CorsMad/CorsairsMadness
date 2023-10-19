/// @description Insert description here
// You can write your code in this editor

if place_meeting(x,y,obj_Player){
    instance_create_depth(0,0,0,obj_weather_sandstorm);
    instance_create_depth(592,128,1,obj_destructable_block_big_sand)
    var bl = instance_create_depth(592,112,0,obj_sand_creator_h3_2)
    bl.image_xscale = 3;
    instance_destroy()   ;
}






