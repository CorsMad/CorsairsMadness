/// @description Insert description here
// You can write your code in this editor
y+=vspd;
if vspd < 3 vspd+=0.1;
fnc_Collision(obj_block)

if place_meeting(x,y+1,obj_block){
	instance_create_depth(x,y,depth,obj_blob_destr);
	instance_destroy();
}



