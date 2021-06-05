/// @description Insert description here
// You can write your code in this editor
image_xscale = dir;
fspd = spd;
x+=fspd;
if (!isHooked) y = obj_Player.y-16;

#region Полет вперед
if state = 1 
{
    spd = dir*(10+abs(obj_Player.fspd));
    t++;
    if t = 15
    {
        state = 2;   
    }
    if place_meeting(x,y,obj_block)
    {
        state = 2;       
    }
}
#endregion

#region полет назад
    if state = 2 
    {
        spd = -8*dir; 
         if place_meeting(x,y,obj_Player) instance_destroy();
    
    }
#endregion

#region привязка

    // Столкновение с блоком
    if ((obj_Player.dir != dir) && isHooked = 0) instance_destroy();
    if place_meeting(x,y,obj_hook_block) && isHooked = 0
    {
        var HookBlockCollision = instance_place(x,y,obj_hook_block);
        if HookBlockCollision != noone 
        {
            instance_create_depth(HookBlockCollision.x+8,HookBlockCollision.y+8,depth+1,obj_item_hook_iframes);   
        }
        
        isHooked = 1;
        obj_Player.isHooking = 1;
        obj_Player.dir = dir;
    }
    
    // Столкновение с grounded
    if place_meeting(x,y,obj_grounded_molded) && isHooked = 0
    {
        var HookBlockGroundedMolded = instance_place(x,y,obj_grounded_molded);
        if HookBlockGroundedMolded != noone 
        {
            var i = instance_create_depth(HookBlockGroundedMolded.x,HookBlockGroundedMolded.y-18,depth+1,obj_item_hook_iframes);   
            i.oleg = HookBlockGroundedMolded;
        }
        
        isHooked = 1;
        obj_Player.isHooking = 1;
        obj_Player.dir = dir;       
    }
    
    
    // Столкновение с flying
    if place_meeting(x,y,obj_flying_molded) && isHooked = 0
    {
        var HookBlockGroundedMolded = instance_place(x,y,obj_flying_molded);
        if HookBlockGroundedMolded != noone 
        {
            var i = instance_create_depth(HookBlockGroundedMolded.x,HookBlockGroundedMolded.y-18,depth+1,obj_item_hook_iframes);   
            i.oleg = HookBlockGroundedMolded;
        }
        
        isHooked = 1;
        obj_Player.isHooking = 1;
        obj_Player.dir = dir;       
    }
    
#endregion

#region привязан
    if (isHooked)
    {
        fspd = 0;
        spd = 0;
        state = 3;
        if place_meeting(x,y,obj_Player) 
        {
            instance_destroy();
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
    }
#endregion

if obj_Player.isTakingdmg = 1
{
    instance_destroy();   
}