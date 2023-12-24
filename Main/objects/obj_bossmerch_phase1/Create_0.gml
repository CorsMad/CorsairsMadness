/// @description Insert description here
// You can write your code in this editor
state = 0;

t = -100;

rand_n1 = 0;
rand_n2 = 0;


if global.saved_jungle = 1  hp1 = 0 else hp1 = 3;
if global.saved_desert = 1  hp2 = 0 else hp2 = 3;
if global.saved_snow = 1    hp3 = 0 else hp3 = 3;
if global.saved_shadow = 1  hp4 = 0 else hp4 = 3;
if global.saved_vulcano = 1 hp5 = 0 else hp5 = 3;




enemy_hp = 25+hp1+hp2+hp3+hp4+hp5;
enemy_hp_max = 40
t_red = 0;
hit_cd = 0;

image_xscale = -1;

fnc_msc_start_checkpoint(msc_di_boss_fight);