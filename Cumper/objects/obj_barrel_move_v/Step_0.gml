/// @description Insert description here
// You can write your code in this editor

if place_meeting(x,y,obj_cube) working = 1;

if working = 1 {

    y+=mov;
    mov = lerp(mov,mov_spd,0.05);
    if y < point_u mov_spd = mov_down;
    if y > point_d mov_spd = mov_up;

}




if place_meeting(x,y,obj_cube) && gravitate = 1{
	obj_cube.hspd = 0;	
	obj_cube.vspd = 0;	
	obj_cube.x = x;
	obj_cube.y = y;
	
	if keyboard_check_pressed(vk_space) {
		obj_cube.firing = 1;
		obj_cube.hspd = hspd;
		obj_cube.vspd = vspd;
		gravitate = 0;
	}
}

if gravitate = 0 {
	t++;
	if t = 30 {
		t = 0;
		gravitate = 1;
	}
}