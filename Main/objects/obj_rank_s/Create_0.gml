/// @description Insert description here
// You can write your code in this editor
b = 0;
t = 0;
depth = -1;
image_alpha = 0;
var i = instance_create_depth(x,y,depth-1,obj_sfx_explosion_bomb)
i.image_speed = 0.5;
i.image_xscale = 1.5;
i.image_yscale = 1.5;
instance_create_depth(x,y-8,depth+1,obj_sfx_sparkle_creator_for_s_rank);