/// @description Insert description here
// You can write your code in this editor
//Rain System
partRain_sys = part_system_create();

//Rain Particle
partRain = part_type_create();
part_type_shape(partRain,pt_shape_snow);
part_type_size(partRain,0.05,0.1,0,0);    //partRain,0.2,0.3,0,0
part_type_color2(partRain,c_white, c_black);
part_type_alpha2(partRain,.5,.9);
part_type_gravity(partRain,0.001,290);
part_type_speed(partRain,0.5,0.5,0,0);
part_type_direction(partRain,250,330,0,3);
part_type_orientation(partRain,290,290,0,0,0);
part_type_life(partRain,1024,1024);

//Puddle Particle
partPuddle = part_type_create();
part_type_shape(partPuddle,pt_shape_circle);
part_type_size(partPuddle,0.5,0.8,.01,0);
part_type_scale(partPuddle,.5,.1);
part_type_color1(partPuddle,c_silver);
part_type_alpha2(partPuddle,.4,0);
part_type_speed(partPuddle,0,0,0,0);
part_type_direction(partPuddle,0,0,0,0);
part_type_gravity(partPuddle,0,270);
part_type_life(partPuddle,50,60);

//Set Sequence
part_type_death(partRain,1,partPuddle);

//Create Emitter
partRain_emit = part_emitter_create(partRain_sys);

