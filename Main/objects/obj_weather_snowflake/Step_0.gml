/// @description Insert description here
// You can write your code in this editor

y+=vspd;
x+=hspd;




if state = 0{	
	if place_meeting(x,y,obj_block){
		state =1;
		hspd = 0;
		vspd = 0;
	}
}

if state = 1{
	t++;
	if t >= t_max instance_destroy();
}