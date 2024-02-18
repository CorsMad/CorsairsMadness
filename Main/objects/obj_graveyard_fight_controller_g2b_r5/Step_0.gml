/// @description Insert description here
// You can write your code in this editor
if state = 0
{
     t++;
     if t = 75
     {		
		if obj_Player.x > 208
            {
                var e1 = instance_create_depth(48,192,100,obj_molded_big_spawner_n);
                e1.y_cr = 16;
                e1.obj_cr = obj_werewolf;   
            } else 
            {
                var e1 = instance_create_depth(352,224,100,obj_molded_big_spawner_n);
                e1.y_cr = 16;
                e1.obj_cr = obj_plant;      
            }    
		
		
     }
     
     if (t = 100) {
        instance_create_depth(128,240,100,obj_zombie_start);        
     }
     
     if t =150 
     {
        instance_create_depth(320,240,100,obj_zombie_start);                
     }
     
     if t = 200
     {
        state = 0.5;
        t = 0;   
     }
}

if state = 0.5
{
    if !instance_exists(obj_zombie_start) && !instance_exists(obj_zombie) && !instance_exists(obj_plant) &&
	! instance_exists(obj_werewolf)
    {
        state = 1;   
    }
}

if state = 1
{
    t++;
    switch(t)
    {
        case 50: 
            if obj_Player.x > 208
            {
                var e1 = instance_create_depth(48,192,100,obj_molded_big_spawner_n);
                e1.y_cr = 16;
                e1.obj_cr = obj_werewolf;    
            } else 
            {
                var e1 = instance_create_depth(352,224,100,obj_molded_big_spawner_n);
                e1.y_cr = 16;
                e1.obj_cr = obj_werewolf;      
            }            
            break;
        case 300:
            if obj_Player.x > 208
            {
                var e1 = instance_create_depth(112,224,100,obj_molded_big_spawner_n);
                e1.y_cr = 16;
                e1.obj_cr = obj_abomination;    
            } else 
            {
                var e1 = instance_create_depth(336,224,100,obj_molded_big_spawner_n);
                e1.y_cr = 16;
                e1.obj_cr = obj_abomination;      
            }                 
            break;
        case 350: t = 0;state = 1.5;break;
    }
}

if state = 1.5
{
    if !instance_exists(obj_abomination) && !instance_exists(obj_werewolf)
    {
        state = 2;   
    }
}

if state = 2
{
    if instance_exists(obj_block_shadow)
    {
        obj_block_shadow.isOn = 0;   
    }
    instance_destroy();
    
}