/// @description Insert description here
// You can write your code in this editor



if instance_exists(obj_Player_boat)
{
    if obj_Player_boat.cannonshoot_count != 0 && obj_Player_boat.canControl = 1  // Заряд пушки
    {   
        draw_sprite(spr_boat_powerup_indicator,0,obj_Player_boat.x-20,obj_Player_boat.y-64);
        draw_set_color(c_white);
        draw_set_font(fnt_pixel_small);
        draw_set_halign(fa_middle);
        draw_text(x+13,y+3,obj_Player_boat.cannonshoot_count);
    }
    if obj_Player_boat.fastshoot_count != 0 && obj_Player_boat.canControl = 1// Заряд ускорения
    {   
        draw_sprite(spr_boat_powerup_indicator,0,obj_Player_boat.x-20,obj_Player_boat.y-64);
        draw_set_color(c_white);
        draw_set_font(fnt_pixel_small);
        draw_set_halign(fa_middle);
        draw_text(x+13,y+3,obj_Player_boat.fastshoot_count);
    }
}