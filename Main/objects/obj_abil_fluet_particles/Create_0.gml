/// @description Insert description here
// You can write your code in this editor
sprite_index = spr_abil_fluet_particle;
image_index = choose(0,1,2,3);
image_xscale = choose(-1,1);
image_alpha = 0.8;
image_speed = 0;
t = 0 // время жизни
hspd = choose(-1,-0.75,-0.5,-0.25,0.25,0.5,0.75,1);
vspd = choose(-0.5,-0.75,-1);
image_blend = choose(c_red,c_white,c_green,c_blue,c_yellow);