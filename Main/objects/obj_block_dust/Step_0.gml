/// @description Insert description here
// You can write your code in this editor

switch(state)
{
    case 0: image_index = 0;
            if place_meeting(x,y-1,obj_Player)
            {
                state = 1;  
                instance_create_depth(x+8,y+8,depth-1,obj_block_dust_sfx);
            }
            break;
    case 1: image_index = 1;
    
            if !place_meeting(x,y-1,obj_Player)
            {
                
                var i1 = instance_create_depth(x+8,y+8,depth-1,obj_block_dust_dead);
                var i2 = instance_create_depth(x+12,y+8,depth-1,obj_block_dust_dead);
                var i3 = instance_create_depth(x+8,y+12,depth-1,obj_block_dust_dead);
                var i4 = instance_create_depth(x+12,y+12,depth-1,obj_block_dust_dead);
                i1.image_index = 0;
                i1.hspd = choose(-0.1,-0.2,-0.3,-0.4,-0.5,-0.6,-0.7,-0.8,-0.9,1);
                i2.image_index = 1;
                i2.hspd = choose(0.1,0.2,0.3,0.4,0.5,0.6,0.7,0.8,0.9,1);
                i3.image_index = 2;
                i3.hspd = choose(-0.1,-0.2,-0.3,-0.4,-0.5,-0.6,-0.7,-0.8,-0.9,1);
                i4.image_index = 3;
                i4.hspd = choose(0.1,0.2,0.3,0.4,0.5,0.6,0.7,0.8,0.9,1);
                
                instance_create_depth(x+8,y+8,depth-2,obj_sfx_dust_expl_small);
                instance_destroy();
            }
            break;
}