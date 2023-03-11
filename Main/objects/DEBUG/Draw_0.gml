/// @description Insert description here
// You can write your code in this editor
/*
if instance_exists(obj_boss_d1_1)
{
    draw_text(32,48,string(obj_boss_d1_1.state)) ;
    draw_text(32,64,string(obj_boss_d1_1.t));
}
*/

if instance_exists(obj_molded_purple_shield)
{
    draw_text(32,48,string(obj_molded_purple_shield.hit_stored)) ;  
    draw_text(32,64,string(obj_molded_purple_shield.t)) ;  
    draw_text(32,96,string(obj_molded_purple_shield.hit_cd)); 
    draw_text(32,128,string(obj_molded_purple_shield.state)); 
}