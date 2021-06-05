/// @description Insert description here
// You can write your code in this editor
if global.Gold_behind_destructable_array[MyID,0] == 1 
{
    instance_destroy(); 
} else 
{
    if !place_meeting(x,y,obj_destructable_block_medium) 
    {
        if container = 1
    	{
    		instance_create_depth(x+16,y+16,1,obj_cr1);
    	}
	
    	if container = 2 
    	{
    		instance_create_depth(x+8,y+16,1,obj_cr1);
    		instance_create_depth(x+24,y+16,1,obj_cr2);
    	}
        instance_destroy();	
        global.Gold_behind_destructable_array[MyID,0] = 1;
    }
}