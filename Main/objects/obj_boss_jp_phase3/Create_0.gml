/// @description Insert description here
// You can write your code in this editor

hspd = 0;
vspd = 0;

t = 0; // общий таймер
t_b = 0;
state = 0.1;
last_state = 0; // последний удар

light_cd = 0;
hook_choose = choose(0,1);
t_hook = 0; // таймер появления
t_anim = 0;

hit_cd = 0;
enemy_hp = 70;
delay = 0;

dmg_multiplier = 1;

t_blood = 0;