/// @description Insert description here
// You can write your code in this editor

if instance_exists(obj_maze2_controller1)
{
	if obj_maze2_controller1.row = 0{
		y = 182;
    switch(obj_maze2_controller1.choosed)
    {
        case 0: x = 186;break;   
        case 1: x = 219;break;   
        case 2: x = 253;break;   
        case 3: x = 286;break;   
    }}
	if obj_maze2_controller1.row = 1{
		x = 245;
		y = 228;
	}
}