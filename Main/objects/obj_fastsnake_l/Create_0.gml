/// @description Insert description here
// You can write your code in this editor


/*
state 
0 - обычное перемещение
1 - быстрое перемещение
2 - после бумеранга
*/
sprite_index = spr_snake_fast_move;
state = 0;
hspd = -0.5;
vspd = 0;
boom = 0;
enemy_hp = 1;
hit_cd = 0;