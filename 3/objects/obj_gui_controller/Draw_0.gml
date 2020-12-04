/// @description Insert description here
// You can write your code in this editor

#region draw rectangle
	draw_set_colour(c_black);
	draw_rectangle(camera_get_view_x(view_camera[0]),0,camera_get_view_x(view_camera[0])+480,camera_get_view_y(view_camera[0])+32,false);
#endregion

#region draw hp

	for (var i=1; i-1<global.hp_max; i++) 
	{
		draw_sprite_ext(spr_hud_heart,1,(camera_get_view_x(view_camera[0]))+i*10,camera_get_view_y(view_camera[0])+1,1,1,0, c_white,1);
	}

 
	for (var i=1; i-1<global.hp; i++)
	{
	    draw_sprite_ext(spr_hud_heart,0,(camera_get_view_x(view_camera[0]))+i*10,camera_get_view_y(view_camera[0])+1,1,1,0, c_white,1);
	}

#endregion

#region  draw mana
	
#endregion

#region draw gold
	draw_set_halign(fa_left);
	draw_text_colour(camera_get_view_x(view_camera[0])+16,camera_get_view_y(view_camera[0])+16,string(gold),c_white,c_white,c_white,c_white,1);
#endregion

