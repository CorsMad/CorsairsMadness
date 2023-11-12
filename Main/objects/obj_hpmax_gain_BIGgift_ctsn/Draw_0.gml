/// @description Insert description here
// You can write your code in this editor


scr_text_graphics();

for (var i=1; i-1<global.hp_max; i++) 
{
	 draw_sprite_ext(spr_hud_heart,0,(camera_get_view_x(view_camera[0]))+i*11,camera_get_view_y(view_camera[0])+5,1,1,0, c_white,1);
}

for (var i=1; i-1<global.mana_max; i++) 
{
	draw_sprite_ext(spr_hud_mana,0,(camera_get_view_x(view_camera[0]))+i*11,camera_get_view_y(view_camera[0])+16,1,1,0, c_white,1);
} 
