/// @description Insert description here
// You can write your code in this editor
/*
if instance_exists(obj_boss_d1_1)
{
    draw_text(32,48,string(obj_boss_d1_1.state)) ;
    draw_text(32,64,string(obj_boss_d1_1.t));
}
*/

if instance_exists(obj_molded_sand_boomer)
{
    draw_text(32,48,string(obj_molded_sand_boomer.state)) ;  
    draw_text(32,64,string(obj_molded_sand_boomer.bounce)) ;  
    draw_text(32,96,string(obj_molded_sand_boomer.t)); 
    draw_text(32,128,string(obj_molded_sand_boomer.flip)); 
     
}