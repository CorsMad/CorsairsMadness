
#region draw rectangle
	draw_set_colour(c_black);
	draw_rectangle_color(camera_get_view_x(view_camera[0]),0,camera_get_view_x(view_camera[0])+480,camera_get_view_y(view_camera[0])+30,c_black,c_black,c_black,c_black,false);
	draw_rectangle_color(camera_get_view_x(view_camera[0]),camera_get_view_y(view_camera[0])+31,camera_get_view_x(view_camera[0])+480,camera_get_view_y(view_camera[0])+31,c_black,c_black,c_grey,c_grey,false);
	
#endregion

#region draw hp

	for (var i=1; i-1<global.hp_max; i++) 
	{
        if instance_exists(obj_Player)
        {
            if obj_Player.state = 0
            {
		        draw_sprite_ext(spr_hud_heart,1,(camera_get_view_x(view_camera[0]))+i*11,camera_get_view_y(view_camera[0])+5,1,1,0, c_white,1);
            }
            
                        
            if obj_Player.state = 1
            {
		        draw_sprite_ext(spr_hud_heart_molded,1,(camera_get_view_x(view_camera[0]))+i*9,camera_get_view_y(view_camera[0])+2,1,1,0, c_white,1);
            }   
        }
        image_speed = 1;
	}

 
	for (var i=1; i-1<global.hp; i++)
	{
        if obj_Player.state = 0
        {
	        draw_sprite_ext(spr_hud_heart,0,(camera_get_view_x(view_camera[0]))+i*11,camera_get_view_y(view_camera[0])+5,1,1,0, c_white,1);
        }
        if obj_Player.state = 1
        {
	        draw_sprite_ext(spr_hud_heart_molded,0,(camera_get_view_x(view_camera[0]))+i*9,camera_get_view_y(view_camera[0])+2,1,1,0, c_white,1);
			draw_sprite_stretched(spr_hud_superattack_power,0,(camera_get_view_x(view_camera[0]))+18,camera_get_view_y(view_camera[0])+20,(obj_Player.superattack/obj_Player.superattack_max)*100,7);
        }
        
	}

#endregion

#region BOOS HP

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

#region BOSS
	draw_set_font(fnt_pixel);
    draw_set_halign(fa_right)
    draw_text_colour(camera_get_view_x(view_camera[0])+344,camera_get_view_y(view_camera[0])+10,"boss",c_white,c_white,c_white,c_white,1);
	draw_sprite_ext(spr_hud_heart,0,(camera_get_view_x(view_camera[0]))+350,camera_get_view_y(view_camera[0])+8,1,1,0, c_white,1);
	
#region jungle
#region state1
if instance_exists(obj_boss_jp_phase1){
draw_sprite_stretched(spr_boss_hp_bar,0,(camera_get_view_x(view_camera[0]))+373,camera_get_view_y(view_camera[0])+6,(obj_boss_jp_phase1.enemy_hp/obj_boss_jp_phase1.enemy_hp_max)*100,18);
}
#endregion
#region state2
if instance_exists(obj_boss_jp_phase2){
draw_sprite_stretched(spr_boss_hp_bar,0,(camera_get_view_x(view_camera[0]))+373,camera_get_view_y(view_camera[0])+6,(obj_boss_jp_phase2.enemy_hp/obj_boss_jp_phase2.enemy_hp_max)*100,18);
}
#endregion
#region state3
if instance_exists(obj_boss_jp_phase3){
draw_sprite_stretched(spr_boss_hp_bar,0,(camera_get_view_x(view_camera[0]))+373,camera_get_view_y(view_camera[0])+6,(obj_boss_jp_phase3.enemy_hp/obj_boss_jp_phase3.enemy_hp_max)*100,18);
}
#endregion
#endregion

#region desert
#region state1
if instance_exists(obj_boss_dp_phase1){
draw_sprite_stretched(spr_boss_hp_bar,0,(camera_get_view_x(view_camera[0]))+373,camera_get_view_y(view_camera[0])+6,(obj_boss_dp_phase1.enemy_hp/obj_boss_dp_phase1.enemy_hp_max)*100,18);
}
#endregion
#region state2
if instance_exists(obj_boss_dp_phase2){
draw_sprite_stretched(spr_boss_hp_bar,0,(camera_get_view_x(view_camera[0]))+373,camera_get_view_y(view_camera[0])+6,(obj_boss_dp_phase2.enemy_hp/obj_boss_dp_phase2.enemy_hp_max)*100,18);
}
#endregion
#region state3
if instance_exists(obj_boss_dp_phase3){
draw_sprite_stretched(spr_boss_hp_bar,0,(camera_get_view_x(view_camera[0]))+373,camera_get_view_y(view_camera[0])+6,(obj_boss_dp_phase3.enemy_hp/obj_boss_dp_phase3.enemy_hp_max)*100,18);
}
#endregion
#endregion

#region snow
#region state1
if instance_exists(obj_boss_ps_phase1){
draw_sprite_stretched(spr_boss_hp_bar,0,(camera_get_view_x(view_camera[0]))+373,camera_get_view_y(view_camera[0])+6,(obj_boss_ps_phase1.enemy_hp/obj_boss_ps_phase1.enemy_hp_max)*100,18);
}
#endregion
#region state2
if instance_exists(obj_boss_ps_phase2){
draw_sprite_stretched(spr_boss_hp_bar,0,(camera_get_view_x(view_camera[0]))+373,camera_get_view_y(view_camera[0])+6,(obj_boss_ps_phase2.enemy_hp/obj_boss_ps_phase2.enemy_hp_max)*100,18);
}
#endregion
#region state3
if instance_exists(obj_boss_ps_phase3){
draw_sprite_stretched(spr_boss_hp_bar,0,(camera_get_view_x(view_camera[0]))+373,camera_get_view_y(view_camera[0])+6,(obj_boss_ps_phase3.enemy_hp/obj_boss_ps_phase3.enemy_hp_max)*100,18);
}
#endregion
#endregion

#region shadow
#region state1
if instance_exists(obj_boss_pg_phase1){
draw_sprite_stretched(spr_boss_hp_bar,0,(camera_get_view_x(view_camera[0]))+373,camera_get_view_y(view_camera[0])+6,(obj_boss_pg_phase1.enemy_hp/obj_boss_pg_phase1.enemy_hp_max)*100,18);
}
#endregion
#region state2
if instance_exists(obj_boss_pg_phase2){
draw_sprite_stretched(spr_boss_hp_bar,0,(camera_get_view_x(view_camera[0]))+373,camera_get_view_y(view_camera[0])+6,(obj_boss_pg_phase2.enemy_hp/obj_boss_pg_phase2.enemy_hp_max)*100,18);
}
#endregion
#region state3
if instance_exists(obj_boss_pg_phase3){
draw_sprite_stretched(spr_boss_hp_bar,0,(camera_get_view_x(view_camera[0]))+373,camera_get_view_y(view_camera[0])+6,(obj_boss_pg_phase3.enemy_hp/obj_boss_pg_phase3.enemy_hp_max)*100,18);
}
#endregion
#endregion

#region lava
#region state1
if instance_exists(obj_boss_pl_phase1){
draw_sprite_stretched(spr_boss_hp_bar,0,(camera_get_view_x(view_camera[0]))+373,camera_get_view_y(view_camera[0])+6,(obj_boss_pl_phase1.enemy_hp/obj_boss_pl_phase1.enemy_hp_max)*100,18);
}
#endregion
#region state2
if instance_exists(obj_boss_pl_phase2){
draw_sprite_stretched(spr_boss_hp_bar,0,(camera_get_view_x(view_camera[0]))+373,camera_get_view_y(view_camera[0])+6,(obj_boss_pl_phase2.enemy_hp/obj_boss_pl_phase2.enemy_hp_max)*100,18);
}
#endregion
#region state3
if instance_exists(obj_boss_pl_phase3){
draw_sprite_stretched(spr_boss_hp_bar,0,(camera_get_view_x(view_camera[0]))+373,camera_get_view_y(view_camera[0])+6,(obj_boss_pl_phase3.enemy_hp/obj_boss_pl_phase3.enemy_hp_max)*100,18);
}
#endregion
#endregion

#region death

#region state1
if instance_exists(obj_bossmerch_phase1){
draw_sprite_stretched(spr_boss_hp_bar,0,(camera_get_view_x(view_camera[0]))+373,camera_get_view_y(view_camera[0])+6,(obj_bossmerch_phase1.enemy_hp/obj_bossmerch_phase1.enemy_hp_max)*100,18);
}
#endregion

#region state2
#endregion

#region state3
#endregion

#endregion

#endregion

draw_sprite_ext(spr_boss_hp_bar_border,0,(camera_get_view_x(view_camera[0]))+370,camera_get_view_y(view_camera[0])+3,1,1,0, c_white,1);

if instance_exists(obj_Player){
    if obj_Player.state = 1 draw_sprite_ext(spr_hud_superattack_border,0,(camera_get_view_x(view_camera[0]))+12,camera_get_view_y(view_camera[0])+16,1,1,0, c_white,1);
}


