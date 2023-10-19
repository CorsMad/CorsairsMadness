/// @description Insert description here
// You can write your code in this editor

t++;
switch(t)
{
    case 29:    obj_depth = choose(299,301);break;
    case 30:    switch(obj_depth)
                {
                    case 299:   var front = instance_create_depth(random_range(80,400),random_range(304,464),obj_depth,obj_mask_level_graph_ghost);
                                front.image_alpha = choose(0.4,0.6,0.8);
                                front.image_xscale = choose(-1.5,-1,1,1.5);
                                front.image_yscale = 1.5;
                                
                                var front1 = instance_create_depth(random_range(80,400),random_range(304,464),obj_depth,obj_mask_level_graph_ghost);
                                front1.image_alpha = choose(0.4,0.6,0.8);
                                front1.image_xscale = choose(-1.5,-1,1,1.5);
                                front1.image_yscale = 1.5;
                                
                                var front2 = instance_create_depth(random_range(80,400),random_range(304,464),obj_depth,obj_mask_level_graph_ghost);
                                front2.image_alpha = choose(0.4,0.6,0.8);
                                front2.image_xscale = choose(-1.5,-1,1,1.5);
                                front2.image_yscale = 1.5;
                                
                                var front3 = instance_create_depth(random_range(80,400),random_range(304,464),obj_depth,obj_mask_level_graph_ghost);
                                front3.image_alpha = choose(0.4,0.6,0.8);
                                front3.image_xscale = choose(-1.5,-1,1,1.5);
                                front3.image_yscale = 1.5;
                                
                                var front4 = instance_create_depth(random_range(80,400),random_range(304,464),obj_depth,obj_mask_level_graph_ghost);
                                front4.image_alpha = choose(0.4,0.6,0.8);
                                front4.image_xscale = choose(-1.5,-1,1,1.5);
                                front4.image_yscale = 1.5;
                                break;
                                
                    case 301:   var back = instance_create_depth(random_range(80,400),random_range(304,464),obj_depth,obj_mask_level_graph_ghost);
                                back.image_alpha = 1;
                                back.image_xscale = choose(-1.5,1,-1,1.5);
                                back.image_yscale = 1.5;
                                var back1 = instance_create_depth(random_range(80,400),random_range(304,464),obj_depth,obj_mask_level_graph_ghost);
                                back1.image_alpha = 1;
                                back1.image_xscale = choose(-1.5,1,-1,1.5);
                                back1.image_yscale = 1.5;
                                var back2 = instance_create_depth(random_range(80,400),random_range(304,464),obj_depth,obj_mask_level_graph_ghost);
                                back2.image_alpha = 1;
                                back2.image_xscale = choose(-1.5,1,-1,1.5);
                                back2.image_yscale = 1.5;
                                var back3 = instance_create_depth(random_range(80,400),random_range(304,464),obj_depth,obj_mask_level_graph_ghost);
                                back3.image_alpha = 1;
                                back3.image_xscale = choose(-1.5,1,-1,1.5);
                                back3.image_yscale = 1.5;
                                var back4 = instance_create_depth(random_range(80,400),random_range(304,464),obj_depth,obj_mask_level_graph_ghost);
                                back4.image_alpha = 1;
                                back4.image_xscale = choose(-1.5,1,-1,1.5);
                                back4.image_yscale = 1.5;
                                break;  
                                
                }
                t = 0;
                break;
}