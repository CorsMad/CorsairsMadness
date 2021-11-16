/// @description Insert description here
// You can write your code in this editor
//Update Emitter
part_emitter_region(partWind_sys,partWind_emit,obj_Player.x+512,obj_Player.x+576,0,270,ps_shape_line,ps_distr_linear);
part_emitter_burst(partWind_sys,partWind_emit,partWind,choose(0,0,0,0,0,0,0,0,0,4,4,4,4));

//Creating leaves
c+=1;

if c = 1 {
    instance_create_depth(obj_Player.x+512,random_range(60,180),1,obj_weather_wind_leaf);
}

if c = c_max {
    c = 0;
}