/// @description Insert description here
// You can write your code in this editor
t=0;
hspd = 0;
vspd = 0;
image_speed = 1;
fnc_snd_play_over(snd_follower_takedmg);
instance_create_depth(x,y-64,depth-1,obj_hp_full_gain_gift_mold);

if instance_exists(obj_follower_grounded_laser_vfx) instance_destroy(obj_follower_grounded_laser_vfx);

if obj_trigger_block_trigger_dp_boss_l.state != 0 obj_trigger_block_trigger_dp_boss_l.state = 3;
if obj_trigger_block_trigger_dp_boss_r.state != 0 obj_trigger_block_trigger_dp_boss_r.state = 3;
if obj_boss_dp_light_block.state!= 0 obj_boss_dp_light_block.state = 3;

var mold = instance_create_depth(0,0,0,obj_boss_dp_mold_create);
mold.fol =id;