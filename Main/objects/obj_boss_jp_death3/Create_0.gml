/// @description Insert description here
// You can write your code in this editor
if instance_exists(obj_pause_controller) instance_destroy(obj_pause_controller);
fnc_msc_stop_play_slow();
t=0;
t_blood = 0;
hspd = 0;
vspd = 0;
state = 0;
image_speed = 0;
image_index = 1;
instance_destroy(obj_follower_grounded_laser_vfx);
instance_destroy(obj_fastfly_molded);
instance_destroy(obj_molded_small_fastfly);

if instance_exists(obj_follower_grounded_laser_vfx) instance_destroy(obj_follower_grounded_laser_vfx);

if instance_exists(obj_bjoss3_hook_block_l_cr)
{
    if obj_bjoss3_hook_block_l_cr.state != 0 obj_bjoss3_hook_block_l_cr.state = 3;
}

if instance_exists(obj_bjoss3_hook_block_r_cr)
{
    if obj_bjoss3_hook_block_r_cr.state != 0 obj_bjoss3_hook_block_r_cr.state = 3;
}

if instance_exists(obj_boss_jp_light_block_l)
{
    if obj_boss_jp_light_block_l.state != 0 obj_boss_jp_light_block_l.state = 3;
}

if instance_exists(obj_boss_jp_light_block_r)
{
    if obj_boss_jp_light_block_r.state != 0 obj_boss_jp_light_block_r.state = 3;
}