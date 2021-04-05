/// @description Insert description here
// You can write your code in this editor
y+=spd;
if spd < 4
{
	spd+=0.1;
}
angl_spd+=0.25;
if a = 1 
{
	image_angle+=angl_spd;	
} else image_angle-=angl_spd;
if place_meeting(x,y-4,obj_bird_horizontal_limiter) || place_meeting(x,y-4,obj_destructable_parent)
{
	instance_create_depth(x,y,-1,obj_sfx1);
	instance_destroy();	
}