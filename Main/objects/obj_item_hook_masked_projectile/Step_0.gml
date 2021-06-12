/// @description Insert description here
// You can write your code in this editor
image_xscale = dir;
fspd = spd;
x+=fspd;


    spd = dir*(abs(obj_Player.fspd));

if instance_exists(obj_item_hook_masked)
{
    if  obj_item_hook_masked.state != 1 && obj_item_hook_masked.isHooked = 0 && place_meeting(x,y,obj_item_hook_masked)
    {
        instance_destroy();    
    }
    
    if obj_item_hook_masked.isHooked = 1
    {
        image_index = 1;
        if place_meeting(x,y,obj_Player)
        {
            instance_destroy();   
        }
        if place_meeting(x,y,obj_item_hook_masked)
        
        {
            instance_destroy();   
        }
    }
    
}

if !instance_exists(obj_item_hook_masked) || obj_Player.isTakingdmg = 1 
{
    instance_destroy();   
}
