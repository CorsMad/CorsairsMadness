/// @description Insert description here
// You can write your code in this editor
if point_distance(x, y, 450, 186) > 6
{
    move_towards_point(450, 186, 6);
}
else 
{
	if string(room_get_name(room)) == "EnduranceDesert"
	{
		instance_create_depth(0,0,0,obj_boss_de_2_appear)   ;		
	} else instance_create_depth(0,0,0,obj_boss_d1_2_appear)   ;
    
    instance_destroy();   
}