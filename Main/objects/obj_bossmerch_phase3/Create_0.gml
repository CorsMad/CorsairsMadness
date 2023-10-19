/// @description Insert description here
// You can write your code in this editor

state = 1;
t = 0;
place_rand = 0;
old_place = 0;
target_x = 0;
target_y = 0;

if global.saved_jungle = 1  hp1 = 0 else hp1 = 3;
if global.saved_desert = 1  hp2 = 0 else hp2 = 3;
if global.saved_snow = 1    hp3 = 0 else hp3 = 3;
if global.saved_shadow = 1  hp4 = 0 else hp4 = 3;
if global.saved_vulcano = 1 hp5 = 0 else hp5 = 3;




enemy_hp = 25+hp1+hp2+hp3+hp4+hp5;
enemy_hp_max = 40

t_sparkle = 0;