/// @description Insert description here
// You can write your code in this editor
image_xscale = dir;
fspd = spd;
x+=fspd;


#region Полет вперед
if state = 1 
{
    instance_create_depth(x,y,depth,obj_item_hook_masked_projectile);
    spd = dir*(20+abs(obj_Player.fspd));
    t++;
    if t = 8
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
            var i = instance_create_depth(HookBlockCollision.x+8,HookBlockCollision.y+8,depth+1,obj_item_hook_iframes);   
            i.oleg = HookBlockCollision; 
            withBlock = 1;
        }
        
        isHooked = 1;
        obj_Player.isHooking = 1;
        
        if dir = 1
        {
            obj_Player.hookspd = 6;   
        } else obj_Player.hookspd = -6;
        instance_create_depth(x+4*dir,y+10,depth-1,obj_sfx3);
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
        if dir = 1
        {
            obj_Player.hookspd = 6;   
        } else obj_Player.hookspd = -6;
     
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
        if dir = 1
        {
            obj_Player.hookspd = 6;   
        } else obj_Player.hookspd = -6;       
    }
    
    // Столкновение с firing
    if place_meeting(x,y,obj_firing_molded) && isHooked = 0
    {
        var HookBlockFiringMolded = instance_place(x,y,obj_firing_molded);
        if HookBlockFiringMolded != noone 
        {
            var i = instance_create_depth(HookBlockFiringMolded.x,HookBlockFiringMolded.y-18,depth+1,obj_item_hook_iframes);   
            i.oleg = HookBlockFiringMolded;
        }
        
        isHooked = 1;
        obj_Player.isHooking = 1;
        if dir = 1
        {
            obj_Player.hookspd = 6;   
        } else obj_Player.hookspd = -6;       
    }
    
    // Столкновение с Crawling
    if place_meeting(x,y,obj_crawling_molded) && isHooked = 0
    {
        var HookBlockFiringMolded = instance_place(x,y,obj_crawling_molded);
        if HookBlockFiringMolded != noone 
        {
            var i = instance_create_depth(HookBlockFiringMolded.x,HookBlockFiringMolded.y-18,depth+1,obj_item_hook_iframes);   
            i.oleg = HookBlockFiringMolded;
        }
        
        isHooked = 1;
        obj_Player.isHooking = 1;
        if dir = 1
        {
            obj_Player.hookspd = 6;   
        } else obj_Player.hookspd = -6;       
    }
    
    // Столкновение с Crawling L
    if place_meeting(x,y,obj_crawling_molded_l) && isHooked = 0
    {
        var HookBlockFiringMolded = instance_place(x,y,obj_crawling_molded_l);
        if HookBlockFiringMolded != noone 
        {
            var i = instance_create_depth(HookBlockFiringMolded.x,HookBlockFiringMolded.y-18,depth+1,obj_item_hook_iframes);   
            i.oleg = HookBlockFiringMolded;
        }
        
        isHooked = 1;
        obj_Player.isHooking = 1;
        if dir = 1
        {
            obj_Player.hookspd = 6;   
        } else obj_Player.hookspd = -6;       
    }
    
    
    
    // Столкновение с FastFly
    if place_meeting(x,y,obj_fastfly_molded) && isHooked = 0
    {
        var HookBlockFastflyMolded = instance_place(x,y,obj_fastfly_molded);
        if HookBlockFastflyMolded != noone 
        {
            var i = instance_create_depth(HookBlockFastflyMolded.x,HookBlockFastflyMolded.y-18,depth+1,obj_item_hook_iframes);   
            i.oleg = HookBlockFastflyMolded;
        }
        
        isHooked = 1;
        obj_Player.isHooking = 1;
        if dir = 1
        {
            obj_Player.hookspd = 6;   
        } else obj_Player.hookspd = -6;       
    }
    
#endregion

#region привязан
    if (isHooked)
    {
        image_index = 1;
        fspd = 0;
        spd = 0;
        state = 3;
        /*
        if place_meeting(x,y,obj_Player) 
        {   
            instance_destroy();
        }
        */
    }
#endregion

if obj_Player.isTakingdmg = 1
{
    instance_destroy();   
}