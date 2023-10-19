/// @description Insert description here
// You can write your code in this editor
if (isOn = 1) {
    if y > max_height {vspd = -0.5;} else vspd = 0;      
}
y+=vspd;

if state = 1 {
	vspd= 1;
	if y > room_height+16 {
        fnc_snd_play_onetime(snd_wall_explosion);
		obj_endurance_lava.state = 1.51;
		if instance_exists(obj_block_lava_endurancebot)
		&& instance_exists(obj_block_lava_endurancetop){
			obj_block_lava_endurancebot.state = 1;	
			obj_block_lava_endurancetop.state = 1;
			instance_destroy();
		}
	}
}