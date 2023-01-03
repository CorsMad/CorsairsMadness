/// @description Insert description here
// You can write your code in this editor
t=0;
hspd = 0;
vspd = 0;
image_speed = 0;
image_index = 1;

instance_create_depth(x,y-64,depth-1,obj_hp_full_gain_gift_mold);

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