/// @description Insert description here
// You can write your code in this editor

t = 0;
instance_create_depth(-60,272,200,obj_ctsc_b_r1_boat);

/*
STATES

0 - начало игрок бежит и прыгает
1 - игрок соприкасается с лодкой
2 - контроль лодки
3 - переход
*/
state = 0;