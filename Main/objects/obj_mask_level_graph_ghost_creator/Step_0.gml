/// @description Insert description here
// You can write your code in this editor

t++;
switch(t)
{
    case 29:    obj_depth = choose(-1,201);break;
    case 30:    switch(obj_depth)
                {
                    case -1:    var front = instance_create_depth(384+random_range(-24,24),240+random_range(-48,12),obj_depth,obj_mask_level_graph_ghost);
                                front.image_alpha = choose(0.4,0.6,0.8);
                                front.image_xscale = choose(-1.5,1.5);
                                front.image_yscale = 1.5;
                                break;
                    case 201:   var back = instance_create_depth(384+random_range(-24,24),240+random_range(-48,12),obj_depth,obj_mask_level_graph_ghost);
                                back.image_alpha = 1;
                                back.image_xscale = choose(-1.5,1.5);
                                back.image_yscale = 1.5;
                                break;            
                }
                t = 0;
                break;
}