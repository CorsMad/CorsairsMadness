/// @description Insert description here
// You can write your code in this editor
fnc_msc_play(msc_jp1_purch);
sprite_index = spr_follower_grounded_mask;
isGrounded = 1;
hspd = 0;
state = 0;
vspd = -8;
dist = 100;
bl_t = 0;
t = 0;
depth = -10;
/*states 

1 - ходьба влево
2 - ходьба вправо 
3 - прыжок
4 - атака хлопок
5 - атака удар по земле
6 - удар выстрел
7 - ожидание и проверка положения игрока
