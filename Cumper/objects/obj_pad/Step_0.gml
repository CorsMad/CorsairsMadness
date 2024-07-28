/// @description Insert description here
// You can write your code in this editor


if on = 1 {
	var player = instance_place(x,y,obj_cube);
	if player!=noone{
		if keyboard_check_pressed(vk_space){	
			screenshake(10,1,0.25);
			player.dash_air = 1;
			player.hspd = hspd;	
			player.vspd = vspd;
			on = 0;
		}
	}
}


if on = 0 {
	var player = instance_place(x,y,obj_cube);
	if player=noone{
		on = 1;
	}
}