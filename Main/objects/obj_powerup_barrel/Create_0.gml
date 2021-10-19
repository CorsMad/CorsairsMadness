/// @description Insert description here
// You can write your code in this editor
a =0;
hspd = -0.5;
image_angle = -30;
to_follow = id;
var i = instance_create_depth(x,y,depth-1,obj_wave_every);
i.follow_obj = to_follow;

b = 0;
isDead = 0;