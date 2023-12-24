
#region draw rectangle
	draw_set_colour(c_black);
	draw_rectangle_color(camera_get_view_x(view_camera[0]),0,camera_get_view_x(view_camera[0])+480,camera_get_view_y(view_camera[0])+30,c_black,c_black,c_black,c_black,false);
	draw_rectangle_color(camera_get_view_x(view_camera[0]),31,camera_get_view_x(view_camera[0])+480,camera_get_view_y(view_camera[0])+31,c_black,c_black,c_grey,c_grey,false);
#endregion

#region draw hp

	for (var i=1; i-1<global.hp_max; i++) 
	{
		draw_sprite_ext(spr_hud_heart,1,(camera_get_view_x(view_camera[0]))+i*11,camera_get_view_y(view_camera[0])+5,1,1,0, c_white,1);
	}

 
	for (var i=1; i-1<global.hp; i++)
	{
	    draw_sprite_ext(spr_hud_heart,0,(camera_get_view_x(view_camera[0]))+i*11,camera_get_view_y(view_camera[0])+5,1,1,0, c_white,1);
	}

#endregion

#region draw mana

	for (var i=1; i-1<global.mana_max; i++) 
	{
		draw_sprite_ext(spr_hud_mana,1,(camera_get_view_x(view_camera[0]))+i*11,camera_get_view_y(view_camera[0])+16,1,1,0, c_white,1);
	}

	for (var i=1; i-1<global.mana; i++)
	{
	    draw_sprite_ext(spr_hud_mana,0,(camera_get_view_x(view_camera[0]))+i*11,camera_get_view_y(view_camera[0])+16,1,1,0, c_white,1);
	}
	
#endregion

#region draw weaposelect

if instance_exists(obj_Player)
{
    if obj_Player.state = 0
    {
        draw_sprite_ext(spr_hud_weaponselect_specabil,0,(camera_get_view_x(view_camera[0]))+224,camera_get_view_y(view_camera[0])+15,1,1,0, c_white,1);
        draw_sprite_ext(spr_hud_weaponselect_border,0,(camera_get_view_x(view_camera[0]))+256,camera_get_view_y(view_camera[0])+15,1,1,0, c_white,1);

		#region отрисовка особых предметов
		switch(obj_Player.specabilnumber)
		{
			case 1: draw_sprite_ext(spr_hud_specialabil_human,0,(camera_get_view_x(view_camera[0]))+224,camera_get_view_y(view_camera[0])+15,1,1,0, c_white,1);break
			case 2: draw_sprite_ext(spr_hud_specialabil_human,1,(camera_get_view_x(view_camera[0]))+224,camera_get_view_y(view_camera[0])+15,1,1,0, c_white,1);break
			case 3: draw_sprite_ext(spr_hud_specialabil_human,2,(camera_get_view_x(view_camera[0]))+224,camera_get_view_y(view_camera[0])+15,1,1,0, c_white,1);break
			case 4: draw_sprite_ext(spr_hud_specialabil_human,3,(camera_get_view_x(view_camera[0]))+224,camera_get_view_y(view_camera[0])+15,1,1,0, c_white,1);break
			case 5: draw_sprite_ext(spr_hud_specialabil_human,4,(camera_get_view_x(view_camera[0]))+224,camera_get_view_y(view_camera[0])+15,1,1,0, c_white,1);break
		}
		#endregion

		#region отрисовка боевых предметов
		switch(global.choosed_item)
    	{
    		
    		case 2:  // выбор якорей
                switch(global.choosed_item_tier)
                {
                    case 1: draw_sprite_ext(spr_hud_weapons ,1,(camera_get_view_x(view_camera[0]))+256,camera_get_view_y(view_camera[0])+15,1,1,0, c_white,1);	break;
                    case 2: draw_sprite_ext(spr_hud_weapons ,2,(camera_get_view_x(view_camera[0]))+256,camera_get_view_y(view_camera[0])+15,1,1,0, c_white,1);	break;
                    case 3: draw_sprite_ext(spr_hud_weapons ,3,(camera_get_view_x(view_camera[0]))+256,camera_get_view_y(view_camera[0])+15,1,1,0, c_white,1);	break;
                }
                break;
    		case 3: // БОМБА
				switch(global.choosed_item_tier)
				{
					case 1: draw_sprite_ext(spr_hud_weapons ,4,(camera_get_view_x(view_camera[0]))+256,camera_get_view_y(view_camera[0])+15,1,1,0, c_white,1);	break;
                    case 2: draw_sprite_ext(spr_hud_weapons ,5,(camera_get_view_x(view_camera[0]))+256,camera_get_view_y(view_camera[0])+15,1,1,0, c_white,1);	break;
                    case 3: draw_sprite_ext(spr_hud_weapons ,6,(camera_get_view_x(view_camera[0]))+256,camera_get_view_y(view_camera[0])+15,1,1,0, c_white,1);	break;	
				}
				break;
    		case 4: // EBALL
				switch(global.choosed_item_tier)
				{
					case 1: draw_sprite_ext(spr_hud_weapons ,7,(camera_get_view_x(view_camera[0]))+256,camera_get_view_y(view_camera[0])+15,1,1,0, c_white,1);	break;
                    case 2: draw_sprite_ext(spr_hud_weapons ,8,(camera_get_view_x(view_camera[0]))+256,camera_get_view_y(view_camera[0])+15,1,1,0, c_white,1);	break;
                    case 3: draw_sprite_ext(spr_hud_weapons ,9,(camera_get_view_x(view_camera[0]))+256,camera_get_view_y(view_camera[0])+15,1,1,0, c_white,1);	break;	
				}
				break;
    		case 5: // ПОПУГАЙ
				switch(global.choosed_item_tier)
				{
					case 1: draw_sprite_ext(spr_hud_weapons ,10,(camera_get_view_x(view_camera[0]))+256,camera_get_view_y(view_camera[0])+15,1,1,0, c_white,1);	break;
                    case 2: draw_sprite_ext(spr_hud_weapons ,11,(camera_get_view_x(view_camera[0]))+256,camera_get_view_y(view_camera[0])+15,1,1,0, c_white,1);	break;
                    case 3: draw_sprite_ext(spr_hud_weapons ,12,(camera_get_view_x(view_camera[0]))+256,camera_get_view_y(view_camera[0])+15,1,1,0, c_white,1);	break;	
				}
				break;
			
    	}
		#endregion


    	
    }
    if obj_Player.state = 1
    {
        draw_sprite_ext(spr_hud_weaponselect_border,0,(camera_get_view_x(view_camera[0]))+256,camera_get_view_y(view_camera[0])+15,1,1,0, c_white,1);   
        /*
        if obj_Player.HookEnabled = 1
        {
            draw_sprite_ext(spr_hud_hook_masked,0,(camera_get_view_x(view_camera[0]))+256,camera_get_view_y(view_camera[0])+15,1,1,0, c_white,1);
        }
        */
        switch(obj_Player.SpecAbilMask)
        {
            case 1://hook
                draw_sprite_ext(spr_hud_hook_masked,0,(camera_get_view_x(view_camera[0]))+256,camera_get_view_y(view_camera[0])+15,1,1,0, c_white,1);
            break;
            case 2://tp
                draw_sprite_ext(spr_hud_tp_masked,0,(camera_get_view_x(view_camera[0]))+256,camera_get_view_y(view_camera[0])+15,1,1,0, c_white,1);
            break;
            case 3://superdash
				draw_sprite_ext(spr_hud_masked_superdash,0,(camera_get_view_x(view_camera[0]))+256,camera_get_view_y(view_camera[0])+15,1,1,0, c_white,1);
            break;
            case 4://doublejump
				draw_sprite_ext(spr_hud_masked_djump,0,(camera_get_view_x(view_camera[0]))+256,camera_get_view_y(view_camera[0])+15,1,1,0, c_white,1);
            break;
            case 5://clone
				draw_sprite_ext(spr_hud_masked_clone,0,(camera_get_view_x(view_camera[0]))+256,camera_get_view_y(view_camera[0])+15,1,1,0, c_white,1);
            break;
        }
        draw_sprite_ext(spr_hud_weaponselect_border,0,(camera_get_view_x(view_camera[0]))+224,camera_get_view_y(view_camera[0])+15,1,1,0, c_white,1);       
        draw_sprite_ext(spr_hud_dash,0,(camera_get_view_x(view_camera[0]))+224,camera_get_view_y(view_camera[0])+15,1,1,0, c_white,1);
    }   
}


#endregion

#region enemy_hp
	if instance_exists(obj_boss1_phase1)
	{
		for (var i=1; i-1<obj_boss1_phase1.enemy_hp; i++) 
		{
			draw_sprite_ext(spr_hud_boss_hp,1,(camera_get_view_x(view_camera[0])+460)-i*9,camera_get_view_y(view_camera[0])+16,1,1,0, c_white,1);
		}
	}
	if instance_exists(obj_boss1_phase2)
	{
		for (var i=1; i-1<obj_boss1_phase2.enemy_hp; i++) 
		{
			draw_sprite_ext(spr_hud_boss_hp,1,(camera_get_view_x(view_camera[0])+460)-i*9,camera_get_view_y(view_camera[0])+16,1,1,0, c_white,1);
		}
	}
	if instance_exists(obj_boss1_phase3)
	{
		for (var i=1; i-1<obj_boss1_phase3.enemy_hp; i++) 
		{
			draw_sprite_ext(spr_hud_boss_hp,1,(camera_get_view_x(view_camera[0])+460)-i*9,camera_get_view_y(view_camera[0])+16,1,1,0, c_white,1);
		}
	}
	draw_set_font(fnt_pixel);
    draw_text_colour(camera_get_view_x(view_camera[0])+403,camera_get_view_y(view_camera[0])+4,"boss hp",c_white,c_white,c_white,c_white,1);
	
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


