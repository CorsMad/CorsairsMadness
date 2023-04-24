/// @description Insert description here
// You can write your code in this editor
instance_create_depth(x,y,0,obj_room_transition_black_screen);

if global.TargetRoom = S1_r13 && !instance_exists(obj_checkpoint_projectile)
{
    var ch_off = instance_create_depth(384,256,0,obj_checkpoint_projectile);
    ch_off.isOn = 2;
} else instance_create_depth(384,256,0,obj_checkpoint_projectile);



if global.secrets_s1_r13 = 0 
{
	instance_create_depth(160,240,100,obj_secret_s1_r13);
}