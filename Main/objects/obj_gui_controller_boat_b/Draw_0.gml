


#region draw rectangle
	draw_set_colour(c_black);
draw_rectangle_color(camera_get_view_x(view_camera[0]),0,camera_get_view_x(view_camera[0])+480,camera_get_view_y(view_camera[0])+30,c_black,c_black,c_black,c_black,false);
	draw_rectangle_color(camera_get_view_x(view_camera[0]),31,camera_get_view_x(view_camera[0])+480,camera_get_view_y(view_camera[0])+31,c_black,c_black,c_grey,c_grey,false);
#endregion

#region draw hp

	for (var i=1; i-1<global.hp_max; i++) 
	{
        draw_sprite_ext(spr_hud_heart,1,(camera_get_view_x(view_camera[0]))+i*11,camera_get_view_y(view_camera[0])+8,1,1,0, c_white,1);
    }

 
	for (var i=1; i-1<global.hp; i++)
	{
        draw_sprite_ext(spr_hud_heart,0,(camera_get_view_x(view_camera[0]))+i*11,camera_get_view_y(view_camera[0])+8,1,1,0, c_white,1);    
	}

#endregion

#region draw weapon

draw_sprite_ext(spr_hud_weaponselect_border,0,(camera_get_view_x(view_camera[0]))+240,camera_get_view_y(view_camera[0])+15,1,1,0, c_white,1);
switch(global.choosed_itemboat)
{
    case 0: draw_sprite_ext(spr_icons_itemshud ,0,(camera_get_view_x(view_camera[0]))+240,camera_get_view_y(view_camera[0])+15,1,1,0, c_white,1);break;	   
    case 2: //Двойные пистолеты
        switch(global.choosed_itemboat_tier)
        {
            case 1: draw_sprite_ext(spr_icons_itemshud,4,(camera_get_view_x(view_camera[0]))+240,camera_get_view_y(view_camera[0])+15,1,1,0, c_white,1);break;	   
            case 2: draw_sprite_ext(spr_icons_itemshud,5,(camera_get_view_x(view_camera[0]))+240,camera_get_view_y(view_camera[0])+15,1,1,0, c_white,1);break;	   
            case 3: draw_sprite_ext(spr_icons_itemshud,6,(camera_get_view_x(view_camera[0]))+240,camera_get_view_y(view_camera[0])+15,1,1,0, c_white,1);break;	   
            break;
        }
    break;
}
#endregion

#region drawhp
		draw_set_font(fnt_pixel);
        draw_set_halign(fa_right)
        draw_text_colour(camera_get_view_x(view_camera[0])+344,camera_get_view_y(view_camera[0])+10,"boss",c_white,c_white,c_white,c_white,1);
		draw_sprite_ext(spr_hud_heart,0,(camera_get_view_x(view_camera[0]))+350,camera_get_view_y(view_camera[0])+8,1,1,0, c_white,1);
		
		
#region DESERT

#region state1
if instance_exists(obj_boat_boss_desert_phase1){
draw_sprite_stretched(spr_boss_hp_bar,0,(camera_get_view_x(view_camera[0]))+373,camera_get_view_y(view_camera[0])+6,(obj_boat_boss_desert_phase1.enemy_hp/obj_boat_boss_desert_phase1.enemy_hp_max)*100,18);
}
#endregion
#region state2
if instance_exists(obj_boat_boss_desert_phase2){
draw_sprite_stretched(spr_boss_hp_bar,0,(camera_get_view_x(view_camera[0]))+373,camera_get_view_y(view_camera[0])+6,(obj_boat_boss_desert_phase2.enemy_hp/obj_boat_boss_desert_phase2.enemy_hp_max)*100,18);
}
#endregion
#region state3
if instance_exists(obj_boat_boss_desert_phase3){
draw_sprite_stretched(spr_boss_hp_bar,0,(camera_get_view_x(view_camera[0]))+373,camera_get_view_y(view_camera[0])+6,(obj_boat_boss_desert_phase3.enemy_hp/obj_boat_boss_desert_phase3.enemy_hp_max)*100,18);
}
#endregion

#endregion

#region SNOW

#region state1
if instance_exists(obj_boat_boss_snow_1){
draw_sprite_stretched(spr_boss_hp_bar,0,(camera_get_view_x(view_camera[0]))+373,camera_get_view_y(view_camera[0])+6,(obj_boat_boss_snow_1.enemy_hp/obj_boat_boss_snow_1.enemy_hp_max)*100,18);
}
#endregion
#region state2
if instance_exists(obj_boat_boss_snow_2){
draw_sprite_stretched(spr_boss_hp_bar,0,(camera_get_view_x(view_camera[0]))+373,camera_get_view_y(view_camera[0])+6,(obj_boat_boss_snow_2.enemy_hp/obj_boat_boss_snow_2.enemy_hp_max)*100,18);
}
#endregion
#region state3
if instance_exists(obj_boat_boss_snow_3){
draw_sprite_stretched(spr_boss_hp_bar,0,(camera_get_view_x(view_camera[0]))+373,camera_get_view_y(view_camera[0])+6,(obj_boat_boss_snow_3.enemy_hp/obj_boat_boss_snow_3.enemy_hp_max)*100,18);
}
#endregion

#endregion

#region Shadow

#region state1
if instance_exists(obj_boat_boss_shadow_1){
draw_sprite_stretched(spr_boss_hp_bar,0,(camera_get_view_x(view_camera[0]))+373,camera_get_view_y(view_camera[0])+6,(obj_boat_boss_shadow_1.enemy_hp/obj_boat_boss_shadow_1.enemy_hp_max)*100,18);
}
#endregion
#region state2
if instance_exists(obj_boat_boss_shadow_2){
draw_sprite_stretched(spr_boss_hp_bar,0,(camera_get_view_x(view_camera[0]))+373,camera_get_view_y(view_camera[0])+6,(obj_boat_boss_shadow_2.enemy_hp/obj_boat_boss_shadow_2.enemy_hp_max)*100,18);
}
#endregion
#region state3
if instance_exists(obj_boat_boss_shadow_3){
draw_sprite_stretched(spr_boss_hp_bar,0,(camera_get_view_x(view_camera[0]))+373,camera_get_view_y(view_camera[0])+6,(obj_boat_boss_shadow_3.enemy_hp/obj_boat_boss_shadow_3.enemy_hp_max)*100,18);
}
#endregion

#endregion

#region Lava

#region state1
if instance_exists(obj_boat_boss_vulcano_1){
draw_sprite_stretched(spr_boss_hp_bar,0,(camera_get_view_x(view_camera[0]))+373,camera_get_view_y(view_camera[0])+6,(obj_boat_boss_vulcano_1.enemy_hp/obj_boat_boss_vulcano_1.enemy_hp_max)*100,18);
}
#endregion
#region state2
if instance_exists(obj_boat_boss_vulcano_2){
draw_sprite_stretched(spr_boss_hp_bar,0,(camera_get_view_x(view_camera[0]))+373,camera_get_view_y(view_camera[0])+6,(obj_boat_boss_vulcano_2.enemy_hp/obj_boat_boss_vulcano_2.enemy_hp_max)*100,18);
}
#endregion
#region state3
if instance_exists(obj_boat_boss_vulcano_3){
draw_sprite_stretched(spr_boss_hp_bar,0,(camera_get_view_x(view_camera[0]))+373,camera_get_view_y(view_camera[0])+6,(obj_boat_boss_vulcano_3.enemy_hp/obj_boat_boss_vulcano_3.enemy_hp_max)*100,18);
}
#endregion

#endregion

#endregion


draw_sprite_ext(spr_boss_hp_bar_border,0,(camera_get_view_x(view_camera[0]))+370,camera_get_view_y(view_camera[0])+3,1,1,0, c_white,1);