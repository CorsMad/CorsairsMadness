/// @description Insert description here
// You can write your code in this editor

t1++;
if t1 = 30 
{
    var e1 = instance_create_depth(x,y,depth-50,choose(obj_sfx_electricity_follow,obj_sfx_electricity2_follow))
    e1.fol = id;
    e1.folx = random_range(-24,24);
    e1.foly = random_range(-24,24);
    e1.image_speed = 2;
    var e2 = instance_create_depth(x,y,depth-50,choose(obj_sfx_electricity_follow,obj_sfx_electricity2_follow))
    e2.fol = id;
    e2.folx = random_range(-24,24);
    e2.foly = random_range(-24,24);
    e2.image_speed = 2;
    t1 = 0;
}


if state = 0
{
    if image_alpha < 1 image_alpha +=0.05;  
    if (image_index > image_number - 1) {
        image_speed = 0;
        image_index = 5;  
        state = 0.5;
    }
}

if (state = 0.5) {
    t++;
    if t = 75 state = 1;
}

if state = 1
{
    sprite_index = spr_boat_boss_desert_proj_ph1_st2_mov;
    image_speed = 2;
    x-=2;
}