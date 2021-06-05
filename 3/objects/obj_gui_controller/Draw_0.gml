
#region draw rectangle
	draw_set_colour(c_black);
	draw_rectangle(camera_get_view_x(view_camera[0]),0,camera_get_view_x(view_camera[0])+480,camera_get_view_y(view_camera[0])+30,false);
#endregion

#region draw hp

	for (var i=1; i-1<global.hp_max; i++) 
	{
		draw_sprite_ext(spr_hud_heart,1,(camera_get_view_x(view_camera[0]))+i*16,camera_get_view_y(view_camera[0])+1,1,1,0, c_white,1);
	}

 
	for (var i=1; i-1<global.hp; i++)
	{
	    draw_sprite_ext(spr_hud_heart,0,(camera_get_view_x(view_camera[0]))+i*16,camera_get_view_y(view_camera[0])+1,1,1,0, c_white,1);
	}

#endregion

#region draw mana

	for (var i=1; i-1<global.mana_max; i++) 
	{
		draw_sprite_ext(spr_hud_mana,1,(camera_get_view_x(view_camera[0]))+i*16,camera_get_view_y(view_camera[0])+16,1,1,0, c_white,1);
	}

	for (var i=1; i-1<global.mana; i++)
	{
	    draw_sprite_ext(spr_hud_mana,0,(camera_get_view_x(view_camera[0]))+i*16,camera_get_view_y(view_camera[0])+16,1,1,0, c_white,1);
	}
	
#endregion

#region draw gold

	draw_sprite_ext(spr_hud_gold,0,(camera_get_view_x(view_camera[0]))+384,camera_get_view_y(view_camera[0])+16,1,1,0, c_white,1);
	draw_set_font(fnt_pixel);
    draw_text_colour(camera_get_view_x(view_camera[0])+406,camera_get_view_y(view_camera[0])+18,string(global.gold),c_white,c_white,c_white,c_white,1);
#endregion

#region draw secrets

	draw_sprite_ext(spr_hud_secret,0,(camera_get_view_x(view_camera[0]))+384,camera_get_view_y(view_camera[0])+1,1,1,0, c_white,1);
	draw_set_font(fnt_pixel);
    draw_text_colour(camera_get_view_x(view_camera[0])+406,camera_get_view_y(view_camera[0])+4,string(global.secrets),c_white,c_white,c_white,c_white,1);

/*
	for (var i=24; i-24<global.secrets; i++) 
	{
		draw_sprite_ext(spr_hud_secret,0,(camera_get_view_x(view_camera[0]))+i*16,camera_get_view_y(view_camera[0])+1,1,1,0, c_white,1);
	}
*/
#endregion

#region draw weaposelect

draw_sprite_ext(spr_hud_weaponselect_border,0,(camera_get_view_x(view_camera[0]))+240,camera_get_view_y(view_camera[0])+15,1,1,0, c_white,1);
if instance_exists(obj_Player)
{
	switch(global.choosed_item)
	{
		case 1: draw_sprite_ext(spr_hud_weapon_boomerang ,0,(camera_get_view_x(view_camera[0]))+240,camera_get_view_y(view_camera[0])+15,1,1,0, c_white,1);break;	
		case 2: draw_sprite_ext(spr_hud_weapon_axe ,0,(camera_get_view_x(view_camera[0]))+240,camera_get_view_y(view_camera[0])+15,1,1,0, c_white,1);	break;
		case 3: draw_sprite_ext(spr_hud_weapon_bomb ,0,(camera_get_view_x(view_camera[0]))+240,camera_get_view_y(view_camera[0])+15,1,1,0, c_white,1); break;
	}
}
#endregion

/*
#region draw_room_name

	draw_set_font(fnt_pixel);
    draw_text_colour(camera_get_view_x(view_camera[0])+420,camera_get_view_y(view_camera[0])+8,room_get_name(room),c_white,c_white,c_white,c_white,1);
#endregion

*/
/*
if instance_exists(obj_boss1_phase1)
{
	draw_set_font(fnt_pixel);
    draw_text_colour(camera_get_view_x(view_camera[0])+420,camera_get_view_y(view_camera[0])+8,obj_boss1_phase1.state,c_white,c_white,c_white,c_white,1);
}
*/

/*
if instance_exists(obj_boss1_phase2)
{
	draw_set_font(fnt_pixel);
    draw_text_colour(camera_get_view_x(view_camera[0])+420,camera_get_view_y(view_camera[0])+8,obj_boss1_phase2.state,c_white,c_white,c_white,c_white,1);
}
if instance_exists(obj_boss1_phase1)
{
	draw_set_font(fnt_pixel);
    draw_text_colour(camera_get_view_x(view_camera[0])+420,camera_get_view_y(view_camera[0])+8,obj_boss1_phase1.state,c_white,c_white,c_white,c_white,1);
}
if instance_exists(obj_boss1_phase3)
{
	draw_set_font(fnt_pixel);
    draw_text_colour(camera_get_view_x(view_camera[0])+420,camera_get_view_y(view_camera[0])+8,obj_boss1_phase3.state,c_white,c_white,c_white,c_white,1);
}
*/


