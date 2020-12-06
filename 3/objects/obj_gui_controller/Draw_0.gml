/// @description Insert description here
// You can write your code in this editor

#region draw rectangle
	draw_set_colour(c_black);
	draw_rectangle(camera_get_view_x(view_camera[0]),0,camera_get_view_x(view_camera[0])+480,camera_get_view_y(view_camera[0])+32,false);
#endregion

#region draw hp

	for (var i=1; i-1<global.hp_max; i++) 
	{
		draw_sprite_ext(spr_hud_heart,1,(camera_get_view_x(view_camera[0]))+i*12,camera_get_view_y(view_camera[0])+1,1,1,0, c_white,1);
	}

 
	for (var i=1; i-1<global.hp; i++)
	{
	    draw_sprite_ext(spr_hud_heart,0,(camera_get_view_x(view_camera[0]))+i*12,camera_get_view_y(view_camera[0])+1,1,1,0, c_white,1);
	}

#endregion

#region draw mana

	for (var i=1; i-1<global.mana_max; i++) 
	{
		draw_sprite_ext(spr_hud_mana,1,(camera_get_view_x(view_camera[0]))+i*12,camera_get_view_y(view_camera[0])+16,1,1,0, c_white,1);
	}

 
	for (var i=1; i-1<global.mana; i++)
	{
	    draw_sprite_ext(spr_hud_mana,0,(camera_get_view_x(view_camera[0]))+i*12,camera_get_view_y(view_camera[0])+16,1,1,0, c_white,1);
	}
	
#endregion

#region draw gold

	draw_sprite_ext(spr_hud_gold,0,(camera_get_view_x(view_camera[0]))+360,camera_get_view_y(view_camera[0])+16,1,1,0, c_white,1);
	draw_set_font(fnt_pixel);
    draw_text_colour(camera_get_view_x(view_camera[0])+380,camera_get_view_y(view_camera[0])+18,string(global.gold),c_white,c_white,c_white,c_white,1);
#endregion

#region draw secrets

	for (var i=30; i-30<global.secrets; i++) 
	{
		draw_sprite_ext(spr_hud_secret,1,(camera_get_view_x(view_camera[0]))+i*12,camera_get_view_y(view_camera[0])+1,1,1,0, c_white,1);
	}

#endregion
