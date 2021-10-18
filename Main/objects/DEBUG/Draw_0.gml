/// @description Insert description here
// You can write your code in this editor
if instance_exists(obj_Player_boat)
{
    
   //draw_text(64,32,obj_Player_boat.b);   
    //draw_text(64,48,obj_Player_boat.b_mid);
    //draw_text(96,48,obj_Player_boat.b_max);
    draw_text(64,32,"image = " + string(obj_Player_boat.image_index));
    draw_text(64,48,"state = " + string(obj_Player_boat.state));
    draw_text(64,64,"t = " + string(obj_Player_boat.t));
    draw_text(64,80,"t_mid = " + string(obj_Player_boat.t_mid));
    draw_text(64,96,"t_max = " + string(obj_Player_boat.t_max));
    //draw_text(64,112,obj_Player_boat.bonus_cd_max)
    
}