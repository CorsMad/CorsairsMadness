/// @description Insert description here
// You can write your code in this editor



state = 0;
t = 0;
stunned = 0;

hspd = 0;
vspd = 0;

enemy_hp = 70;
dmg_multiplier = 1;
t_red = 0;
hit_cd = 0;
hit_stored = 0;
armor = 2;

icon = instance_create_depth(x,y,depth-1,obj_boss_ps_ph1_armor_icon);
icon.origin = id;

sprite_index = spr_boss_sp_idle;
image_speed = 1;