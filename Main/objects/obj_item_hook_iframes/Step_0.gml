/// @description Insert description here
// You can write your code in this editor
if !instance_exists(obj_item_hook_masked)
{
    instance_destroy();   
}

if place_meeting(x,y,obj_Player)
{
    if obj_Player.isHookiframes = 0
    {
        obj_Player.isHookiframes = 1;   
    }
    instance_destroy();
}

if obj_Player.isTakingdmg = 1
{
    instance_destroy();   
}

#region подпрыг
    if place_meeting(x,y,obj_Player) 
        {
            instance_destroy();
            if instance_exists(obj_item_hook_masked)
            {
                instance_destroy(obj_item_hook_masked);   
            }
            obj_Player.isHooking = 0;
            if dir = 1  
            {
                if keyboard_check(ord("D"))
                {
                    obj_Player.afterhookspd = 3;  
                } else obj_Player.afterhookspd = -1;
            }
            if dir = -1  
            {
                if keyboard_check(ord("A"))
                {
                    obj_Player.afterhookspd = -3;
                } else obj_Player.afterhookspd = 1;
            }
        
        
            obj_Player.vspd = -4;
        }
#endregion



if instance_exists(oleg)
{
    x = oleg.x;
    y = oleg.y-18;   
}
