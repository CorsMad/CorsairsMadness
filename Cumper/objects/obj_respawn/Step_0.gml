/// @description Insert description here
// You can write your code in this editor


if spawn = 1{
	t++;
	if t = 30 {
		instance_create_depth(x,y,0,obj_cube);
		t = 0;
		spawn = 0;
	}
}	