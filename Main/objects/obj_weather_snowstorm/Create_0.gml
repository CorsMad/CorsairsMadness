/// @description Insert description here
// You can write your code in this editor
 //Rain System
partWind_sys = part_system_create();

//Rain Particle
partWind = part_type_create();
part_type_shape(partWind,pt_shape_line);
part_type_size(partWind,0.1,0.2,0,0);    //partRain,0.2,0.3,0,0
part_type_color2(partWind,c_white, c_white);
part_type_alpha2(partWind,.5,.1);
part_type_gravity(partWind,0.0,180);
part_type_speed(partWind,10,15,0,0);
part_type_direction(partWind,180,180,0,1);
part_type_orientation(partWind,180,180,0,0,0);
part_type_life(partWind,360,360);

//Puddle Particle
partPuddle = part_type_create();
part_type_shape(partPuddle,pt_shape_circle);
part_type_size(partPuddle,0.5,0.8,.01,0);
part_type_scale(partPuddle,.5,.1);
part_type_color1(partPuddle,c_silver);
part_type_alpha2(partPuddle,.4,0);
part_type_speed(partPuddle,0,0,0,0);
part_type_direction(partPuddle,180,180,0,0);
part_type_gravity(partPuddle,0,270);
part_type_life(partPuddle,50,60);

//Set Sequence
part_type_death(partWind,1,partPuddle);

//Create Emitter
partWind_emit = part_emitter_create(partWind_sys);

