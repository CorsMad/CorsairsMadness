/// @description Insert description here
// You can write your code in this editor

state = -1;
t= 0; 
side = 1 // 0- слева 1 справа
vspd = 0;

if global.saved_jungle = 1  hp1 = 0 else hp1 = 2;
if global.saved_desert = 1  hp2 = 0 else hp2 = 2;
if global.saved_snow = 1    hp3 = 0 else hp3 = 2;
if global.saved_shadow = 1  hp4 = 0 else hp4 = 2;
if global.saved_vulcano = 1 hp5 = 0 else hp5 = 2;

enemy_hp = 20+hp1+hp2+hp3+hp4+hp5;
enemy_hp_max = 30;
hit_cd = 0;
t_red = 0;

image_alpha = 0;