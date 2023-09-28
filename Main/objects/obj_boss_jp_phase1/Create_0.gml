/// @description Insert description here
// You can write your code in this editor

fnc_msc_play(msc_boss_p2);

hspd = 0;
vspd = 0;

t = -100; // общий таймер
t_b = 0; // таймер капли
state = 0.1;
last_state = 0; // последний удар

light_cd = 0;
hook_choose = choose(0,1);
t_hook = 0; // таймер появления

t_anim = 0; // таймер анимации
image_xscale = -1;
dir = image_xscale;

hits_cd =0 ;
hit_cd = 0;
enemy_hp = 70;
enemy_hp_max = 70;
delay = 0;

dmg_multiplier = 1;

t_blood = 0;