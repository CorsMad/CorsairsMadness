
#region draw rectangle
	draw_set_colour(c_black);
	draw_rectangle(camera_get_view_x(view_camera[0]),0,camera_get_view_x(view_camera[0])+480,camera_get_view_y(view_camera[0])+30,false);
#endregion

#region draw hp

	for (var i=1; i-1<global.hp_max; i++) 
	{
        if instance_exists(obj_Player)
        {
            if obj_Player.state = 0
            {
		        draw_sprite_ext(spr_hud_heart,1,(camera_get_view_x(view_camera[0]))+i*16,camera_get_view_y(view_camera[0])+1,1,1,0, c_white,1);
            }
            
                        
            if obj_Player.state = 1
            {
		        draw_sprite_ext(spr_hud_heart_molded,1,(camera_get_view_x(view_camera[0]))+i*16,camera_get_view_y(view_camera[0])+8,1,1,0, c_white,1);
            }   
        }
        image_speed = 1;
	}

 
	for (var i=1; i-1<global.hp; i++)
	{
        if obj_Player.state = 0
        {
	        draw_sprite_ext(spr_hud_heart,0,(camera_get_view_x(view_camera[0]))+i*16,camera_get_view_y(view_camera[0])+1,1,1,0, c_white,1);
        }
        if obj_Player.state = 1
        {
	        draw_sprite_ext(spr_hud_heart_molded,0,(camera_get_view_x(view_camera[0]))+i*16,camera_get_view_y(view_camera[0])+8,1,1,0, c_white,1);
        }
        
	}

#endregion

#region draw mana
if instance_exists(obj_Player)
{
    if obj_Player.state = 0 
    {
    	for (var i=1; i-1<global.mana_max; i++) 
    	{
    		draw_sprite_ext(spr_hud_mana,1,(camera_get_view_x(view_camera[0]))+i*16,camera_get_view_y(view_camera[0])+16,1,1,0, c_white,1);
    	}

    	for (var i=1; i-1<global.mana; i++)
    	{
    	    draw_sprite_ext(spr_hud_mana,0,(camera_get_view_x(view_camera[0]))+i*16,camera_get_view_y(view_camera[0])+16,1,1,0, c_white,1);
    	}
    }
}
	
#endregion

#region draw gold
if instance_exists(obj_Player)
{
    if obj_Player.state = 0 
    {
    	draw_sprite_ext(spr_hud_gold,0,(camera_get_view_x(view_camera[0]))+360,camera_get_view_y(view_camera[0])+16,1,1,0, c_white,1);
    	draw_set_font(fnt_pixel);
        draw_text_colour(camera_get_view_x(view_camera[0])+406,camera_get_view_y(view_camera[0])+18,string(global.gold),c_white,c_white,c_white,c_white,1);
    }
    if obj_Player.state = 1
    {
        draw_sprite_ext(spr_dark_essence,2,(camera_get_view_x(view_camera[0]))+360,camera_get_view_y(view_camera[0])+16,1,1,0, c_white,1);
    	draw_set_font(fnt_pixel);
        draw_text_colour(camera_get_view_x(view_camera[0])+378,camera_get_view_y(view_camera[0])+10.5,string(global.darkessence),c_white,c_white,c_white,c_white,1);
           
    }
}
#endregion

#region draw secrets

if instance_exists(obj_Player)
{
    if obj_Player.state = 0 
    {
        draw_sprite_ext(spr_hud_secret,0,(camera_get_view_x(view_camera[0]))+360,camera_get_view_y(view_camera[0])+1,1,1,0, c_white,1);
    	draw_set_font(fnt_pixel);
        draw_text_colour(camera_get_view_x(view_camera[0])+406,camera_get_view_y(view_camera[0])+4,string(global.secrets),c_white,c_white,c_white,c_white,1);   
    }
}
	

/*
	for (var i=24; i-24<global.secrets; i++) 
	{
		draw_sprite_ext(spr_hud_secret,0,(camera_get_view_x(view_camera[0]))+i*16,camera_get_view_y(view_camera[0])+1,1,1,0, c_white,1);
	}
*/
#endregion

#region draw weaposelect

if instance_exists(obj_Player)
{
    if obj_Player.state = 0
    {
        draw_sprite_ext(spr_hud_weaponselect_border,0,(camera_get_view_x(view_camera[0]))+240,camera_get_view_y(view_camera[0])+15,1,1,0, c_white,1);

    	switch(global.choosed_item)
    	{
    		case 1: draw_sprite_ext(spr_hud_weapon_boomerang ,0,(camera_get_view_x(view_camera[0]))+240,camera_get_view_y(view_camera[0])+15,1,1,0, c_white,1);break;	
    		case 2:  // выбор якорей
                switch(global.choosed_item_tier)
                {
                    case 1: draw_sprite_ext(spr_icons_itemshud ,1,(camera_get_view_x(view_camera[0]))+240,camera_get_view_y(view_camera[0])+15,1,1,0, c_white,1);	break;
                    case 2: draw_sprite_ext(spr_icons_itemshud ,2,(camera_get_view_x(view_camera[0]))+240,camera_get_view_y(view_camera[0])+15,1,1,0, c_white,1);	break;
                    case 3: draw_sprite_ext(spr_icons_itemshud ,3,(camera_get_view_x(view_camera[0]))+240,camera_get_view_y(view_camera[0])+15,1,1,0, c_white,1);	break;
                }
                break;
    		case 3: draw_sprite_ext(spr_hud_weapon_bomb ,0,(camera_get_view_x(view_camera[0]))+240,camera_get_view_y(view_camera[0])+15,1,1,0, c_white,1); break;
    	}
    }
    if obj_Player.state = 1
    {
        draw_sprite_ext(spr_hud_weaponselect_border,0,(camera_get_view_x(view_camera[0]))+256,camera_get_view_y(view_camera[0])+15,1,1,0, c_white,1);   
        if obj_Player.HookEnabled = 1
        {
            draw_sprite_ext(spr_hud_hook_masked,0,(camera_get_view_x(view_camera[0]))+256,camera_get_view_y(view_camera[0])+15,1,1,0, c_white,1);
        }
        draw_sprite_ext(spr_hud_weaponselect_border,0,(camera_get_view_x(view_camera[0]))+224,camera_get_view_y(view_camera[0])+15,1,1,0, c_white,1);       
        draw_sprite_ext(spr_hud_dash,0,(camera_get_view_x(view_camera[0]))+224,camera_get_view_y(view_camera[0])+15,1,1,0, c_white,1);
    }
    
}
#endregion






