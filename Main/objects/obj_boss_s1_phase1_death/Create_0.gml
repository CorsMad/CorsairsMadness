/// @description Insert description here
// You can write your code in this editor
state = 1;
instance_create_depth(x,y,depth-1,obj_hpmax_some_2mana_gain_gift);
t = 0;
var i1 = instance_create_depth(x-16,y-39,depth-1,obj_boss1_particle,{
    image_index : 3   
});
i1.hspd = -0.5;
i1.vspd = -2;
var i2 = instance_create_depth(x-16,y-29,depth-1,obj_boss1_particle,{
    image_index : 3   
});
i2.hspd = -0.1;
i2.vspd = -2;
var i3 = instance_create_depth(x-28,y+16,depth-1,obj_boss1_particle,{
    image_index : 3   
});
i3.hspd = -1.5;
i3.vspd = -1;
var i4 = instance_create_depth(x,y-32,depth-1,obj_boss1_particle,{
    image_index : 3   
});
i4.hspd = 0.1;
i4.vspd = -1;
var i5 = instance_create_depth(x,y+16,depth-1,obj_boss1_particle,{
    image_index : 3   
});
i5.hspd = -0.1;
i5.vspd = -2;
var i6 = instance_create_depth(x+28,y-21,depth-1,obj_boss1_particle,{
    image_index : 3   
});
i6.hspd = 1.5;
i6.vspd = -1;
var i7 = instance_create_depth(x+26,y+12,depth-1,obj_boss1_particle,{
    image_index : 3   
});
i7.hspd = 1;
i7.vspd = -2;
instance_create_depth(x,y,depth-1,obj_hpmax_gain_gift);

image_blend = c_red;