/// @description Insert description here
// You can write your code in this editor
while a < a_max
{
    instance_create_depth(x+16*a,y,-1,obj_cemetery_laser_beam_start); 	
	a++
      
    if a = a_max 
    {
        instance_create_depth(x+16*a,y,-1,obj_cemetery_laser_beam_start_end); 
        instance_destroy();
        break;       
    } 
}