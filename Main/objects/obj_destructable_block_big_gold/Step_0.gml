/// @description Insert description here
// You can write your code in this editor
if global.Gold_behind_destructable_array[MyID,0] == 1 
{
    instance_destroy(); 
} else 
{
    if !place_meeting(x,y,obj_destructable_block_big) 
    {
    	if container = 2
    	{
    		instance_create_depth(x+8,y+24,1,obj_cr1);
    		instance_create_depth(x+40,y+24,1,obj_cr2);
    	}
    	if container = 3
    	{
    		instance_create_depth(x+8,y+24,1,obj_cr1);
    		instance_create_depth(x+24,y+24,1,obj_cr2);
    		instance_create_depth(x+40,y+24,1,obj_cr3);
    	}
    	instance_destroy();	
        global.Gold_behind_destructable_array[MyID,0] = 1;
    }
}
