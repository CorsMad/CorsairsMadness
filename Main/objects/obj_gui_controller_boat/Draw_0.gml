


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

#region draw gold

    draw_sprite_ext(spr_hud_gold,0,(camera_get_view_x(view_camera[0]))+360,camera_get_view_y(view_camera[0])+16,1,1,0, c_white,1);
    draw_set_font(fnt_pixel);
    draw_text_colour(camera_get_view_x(view_camera[0])+406,camera_get_view_y(view_camera[0])+18,string(global.gold),c_white,c_white,c_white,c_white,1);

#endregion

#region draw secrets

        draw_sprite_ext(spr_hud_secret,0,(camera_get_view_x(view_camera[0]))+360,camera_get_view_y(view_camera[0])+1,1,1,0, c_white,1);
    	draw_set_font(fnt_pixel);
        draw_text_colour(camera_get_view_x(view_camera[0])+406,camera_get_view_y(view_camera[0])+4,string(global.secrets),c_white,c_white,c_white,c_white,1);   	

#endregion

#region draw weapon

draw_sprite_ext(spr_hud_weaponselect_border,0,(camera_get_view_x(view_camera[0]))+240,camera_get_view_y(view_camera[0])+15,1,1,0, c_white,1);


if instance_exists(obj_Player_boat){
    switch(obj_Player_boat.state){
        case 0:
            draw_sprite_ext(spr_icons_itemshud ,0,(camera_get_view_x(view_camera[0]))+240,camera_get_view_y(view_camera[0])+15,1,1,0, c_white,1);break;	   
            break;
        case 0.1:
            if global.purch_dualpistols3 = 1 {draw_sprite_ext(spr_icons_confirm ,18,(camera_get_view_x(view_camera[0]))+240,camera_get_view_y(view_camera[0])+15,1,1,0, c_white,1);} else
            if global.purch_dualpistols2 = 1 {draw_sprite_ext(spr_icons_confirm ,17,(camera_get_view_x(view_camera[0]))+240,camera_get_view_y(view_camera[0])+15,1,1,0, c_white,1);} else
            if global.purch_dualpistols1 = 1 {draw_sprite_ext(spr_icons_confirm ,16,(camera_get_view_x(view_camera[0]))+240,camera_get_view_y(view_camera[0])+15,1,1,0, c_white,1);}           
            break;  
        case 0.2:
            if global.purch_blunderbuss3 = 1 {draw_sprite_ext(spr_icons_confirm ,21,(camera_get_view_x(view_camera[0]))+240,camera_get_view_y(view_camera[0])+15,1,1,0, c_white,1);} else  	
            if global.purch_blunderbuss2 = 1 {draw_sprite_ext(spr_icons_confirm ,20,(camera_get_view_x(view_camera[0]))+240,camera_get_view_y(view_camera[0])+15,1,1,0, c_white,1);} else
            if global.purch_blunderbuss1 = 1 {draw_sprite_ext(spr_icons_confirm ,19,(camera_get_view_x(view_camera[0]))+240,camera_get_view_y(view_camera[0])+15,1,1,0, c_white,1);}          	
            break;
        case 0.3:
            if global.purch_parrotcage3 = 1 {draw_sprite_ext(spr_icons_confirm ,24,(camera_get_view_x(view_camera[0]))+240,camera_get_view_y(view_camera[0])+15,1,1,0, c_white,1);} else
            if global.purch_parrotcage2 = 1 {draw_sprite_ext(spr_icons_confirm ,23,(camera_get_view_x(view_camera[0]))+240,camera_get_view_y(view_camera[0])+15,1,1,0, c_white,1);} else
            if global.purch_parrotcage1 = 1 {draw_sprite_ext(spr_icons_confirm ,22,(camera_get_view_x(view_camera[0]))+240,camera_get_view_y(view_camera[0])+15,1,1,0, c_white,1);}
            break;
        case 0.4:
           if global.purch_rapidfire3 = 1 {draw_sprite_ext(spr_icons_confirm ,15,(camera_get_view_x(view_camera[0]))+240,camera_get_view_y(view_camera[0])+15,1,1,0, c_white,1);} else
           if global.purch_rapidfire2 = 1 {draw_sprite_ext(spr_icons_confirm ,14,(camera_get_view_x(view_camera[0]))+240,camera_get_view_y(view_camera[0])+15,1,1,0, c_white,1);} else
           if global.purch_rapidfire1 = 1 {draw_sprite_ext(spr_icons_confirm ,13,(camera_get_view_x(view_camera[0]))+240,camera_get_view_y(view_camera[0])+15,1,1,0, c_white,1);}            
            break;
        case 3:
            draw_sprite_ext(spr_icons_confirm ,25,(camera_get_view_x(view_camera[0]))+240,camera_get_view_y(view_camera[0])+15,1,1,0, c_white,1);
            break;
    }
}




/*

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
*/
#endregion
