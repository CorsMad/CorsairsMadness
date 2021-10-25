/// @description Insert description here
// You can write your code in this editor
if instance_exists(obj_Player_boat)
{
    draw_text(64,32,"state " + string(obj_Player_boat.state));
    draw_text(64,48,"bonus gain pistol " + string(obj_Player_boat.bonus_gain_fast_pistol));
    draw_text(64,64,"bonus gain cannon " + string(obj_Player_boat.bonus_gain_cannon));
    draw_text(64,80,"shoot count " + string(obj_Player_boat.fastshoot_count));
    draw_text(64,96,"cannon count " + string(obj_Player_boat.cannonshoot_count));
/*
    
    draw_text(64,32,"image = " + string(obj_Player_boat.image_index));
    draw_text(64,48,"state = " + string(obj_Player_boat.state));
    draw_text(64,64,"t = " + string(obj_Player_boat.t));
    draw_text(64,80,"t_mid = " + string(obj_Player_boat.t_mid));
    draw_text(64,96,"t_max = " + string(obj_Player_boat.t_max));
*/
    
}