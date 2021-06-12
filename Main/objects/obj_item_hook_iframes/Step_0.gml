/// @description Insert description here
// You can write your code in this editor
if !instance_exists(obj_item_hook_masked)
{
    instance_destroy();   
}

if obj_Player.isTakingdmg = 1
{
    instance_destroy();   
    if instance_exists(obj_item_hook_masked)
    {
        instance_destroy(obj_item_hook_masked);   
    }
}

#region столкновение с игроком
    if place_meeting(x,y,obj_Player) 
        {
            obj_Player.isHookiframes = 1;
            obj_Player.vspd = -4.5;
            obj_Player.image_index = 0;
            obj_Player.isHooking = 0;
            obj_Player.isAfterhook = 1;  
            obj_Player.isGrounded = 0;

            if obj_Player.x < x
            {
                obj_Player.afterhookspd = -2;
            } else obj_Player.afterhookspd = 2;
   
            
            instance_create_depth(obj_Player.x,obj_Player.y,depth,obj_hitbox_mask_hook);
            if instance_exists(obj_item_hook_masked)
            {
                instance_destroy(obj_item_hook_masked);   
            }
            instance_destroy();
        }
#endregion

if instance_exists(oleg)
{
    x = oleg.x;
    y = oleg.y-18;   
}
