/// @description Insert description here
// You can write your code in this editor

if state = 1
{
    if pos = 1
    {
        if instance_exists(obj_boss_l1_3)
        {
            x = obj_boss_l1_3.x+48+8;   
        }
		if instance_exists(obj_boss_le1_3)
		{
			x = obj_boss_le1_3.x+48+8;   	
		}
    }
    if pos = -1
    {
        if instance_exists(obj_boss_l1_3)
        {
            x = obj_boss_l1_3.x-48-8;   
        }
		if instance_exists(obj_boss_le1_3)
		{
			x = obj_boss_le1_3.x-48-8;   	
		}
    }
}