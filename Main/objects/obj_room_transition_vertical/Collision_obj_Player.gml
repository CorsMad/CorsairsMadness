/// @description Insert description here
// You can write your code in this editor
if instance_exists(obj_weather_sandstorm){
	with(obj_weather_sandstorm){
		part_particles_clear(partWind_sys);	
	}
}


room_goto(TargetRoom);
obj_Player.y = TargetY;
//obj_Player.y = TargetY;