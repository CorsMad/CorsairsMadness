/// @description Insert description here
// You can write your code in this editor
t++;
if t mod 10 == 0
{
	instance_create_depth(x+random_range(-28,28),y+random_range(-28,+12),depth-1,obj_sfx_explosion_bomb);
    fnc_snd_play_over(snd_boss_expl);
}

if t mod 5 == 0
{
    
	instance_create_depth(x+random_range(-28,28),y+random_range(-28,+12),depth-1,obj_sfx2);
}

if point_distance(x, y, 240, 80) > 2
{
    move_towards_point(240, 80, 2);
}
else 
{
    var p1 = instance_create_depth(x,y,depth-1,obj_boss_d2_proj_skull);
    var p2 = instance_create_depth(x,y,depth-1,obj_boss_d2_proj_skull);
    var p3 = instance_create_depth(x,y,depth-1,obj_boss_d2_proj_skull);
    var p4 = instance_create_depth(x,y,depth-1,obj_boss_d2_proj_skull);
    
    p1.image_index = 0;
    p1.image_angle = 45;
    p1.hspd = -1;
    p1.vspd = -2;
    p2.image_index = 1;
    p2.image_angle = 90;
    p2.hspd = -2;
    p2.vspd = -4;
    
    p3.image_index = 0;
    p3.image_angle = 315;
    p3.image_xscale = -1;
    p3.hspd = 1;
    p3.vspd = -2;
    p4.image_index = 1;
    p4.image_angle = 270;
    p4.image_xscale = -1;
    p4.hspd = 2;
    p4.vspd = -4;
    instance_create_depth(240,80,0,obj_boss_le1_3_appear);
    instance_destroy();
}



if instance_exists(obj_boss1_big_projectile_creator)
{
	instance_destroy(obj_boss1_big_projectile_creator);
}
if instance_exists(obj_boss1_small_projectile_creator)
{
	instance_destroy(obj_boss1_small_projectile_creator);
}

