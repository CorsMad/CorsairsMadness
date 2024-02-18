/// @description Insert description here
// You can write your code in this editor

fnc_Collision(obj_block);

if vspd < 3 vspd+=acc;

if place_meeting(x,y+1,obj_block){
	if bounce_count>=1 {
		vspd = choose(-1,-0.75,-0.5,-0.25);
		hspd = choose(-1,-0.75,-0.5,-0.25,0,0.25,0.5,0.75,1);
		bounce_count-=1;
		image_index = 1;
	} else {
		instance_destroy();	
	}
}

