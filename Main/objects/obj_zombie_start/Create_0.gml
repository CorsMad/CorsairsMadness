/// @description Insert description here
// You can write your code in this editor
fnc_snd_play_onetime(snd_zombie_start);

instance_create_depth(x,y-4,depth-1,obj_sfx_dust_expl_small);
var i1 = instance_create_depth(x+random_range(-8,-4),y-4,depth-1,obj_zombie_dirt);
var i2 = instance_create_depth(x+random_range(-8,-4),y-4,depth-1,obj_zombie_dirt);
var i3 = instance_create_depth(x+random_range(4,8),y-4,depth-1,obj_zombie_dirt);
var i4 = instance_create_depth(x+random_range(4,8),y-4,depth-1,obj_zombie_dirt);

i1.hspd = choose(-2,-1.75,-1.5,-1.25,-1,-0.5,-0.25,-0.1);
i1.vspd = choose(-2,-1.75,-1.5,-1.25,-1);

i2.hspd = choose(-2,-1.75,-1.5,-1.25,-1,-0.5,-0.25,-0.1);
i2.vspd = choose(-2,-1.75,-1.5,-1.25,-1);

i3.hspd = choose(2,1.75,1.5,1.25,1,0.5,0.25,0.1);
i3.vspd = choose(-2,-1.75,-1.5,-1.25,-1);

i4.hspd = choose(2,1.75,1.5,1.25,1,0.5,0.25,0.1);
i4.vspd = choose(-2,-1.75,-1.5,-1.25,-1);

image_speed = 0;
t = 0;

enemy_hp = 0;
hit_cd = 0;