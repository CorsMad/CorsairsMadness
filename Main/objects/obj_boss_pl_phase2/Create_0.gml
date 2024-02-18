/// @description Insert description here
// You can write your code in this editor

state= 0//0;
t = 0;
hspd = 0;
vspd = 0;
fnc_snd_play_over(snd_spikes_trap_activation);
image_speed = 0;
player_near = 0;
player_near_timer = 0;

hits_cd =0;
hit_cd = 0;
enemy_hp = 60
enemy_hp_max = 60
dmg_multiplier = 1;
pos = 0; // 0 слеванаправо

if x < room_width/2 image_xscale = 1 else image_xscale = -1;