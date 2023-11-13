/// @description Insert description here
// You can write your code in this editor

x+=hspd;
y+=vspd;
vspd+=0.1;

if hspd>0 image_angle-=hspd*multiplier else image_angle+=hspd*multiplier;

if place_meeting(x,y,obj_block){
	instance_destroy();
	instance_create_depth(x,y,depth,obj_sfx_dust_expl_small);
}	




