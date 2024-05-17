/// @description Insert description here
// You can write your code in this editor
if isEnabled = 0
{
	draw_sprite_ext(spr_moving_platform3,1,x,y,1,1,image_angle,image_blend,image_alpha);
} else draw_sprite_ext(spr_moving_platform3,0,x,y,1,1,image_angle,image_blend,image_alpha);