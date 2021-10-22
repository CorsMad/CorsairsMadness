/// @description Insert description here
// You can write your code in this editor
to_follow = id;
hspd = -1;
vspd = 0;
hit_cd = 0;
enemy_hp = 6;
var i = instance_create_depth(x,y,depth-1,obj_wave_every);
i.follow_obj = to_follow;
i.yoffset = 2;