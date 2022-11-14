/// @description Insert description here
// You can write your code in this editor
image_speed = 0;
image_index = 1;
depth = -1;
#region Стейты

/* states
1.  Прибытие из-за экрана
2.  Ожидание
3.  Полет поверху + выстрелы
4.  Ожидание
5.  Перелет по кругу
6.  Ожидание
7.  Перелеты по диагонали + отдых
8.  Ожидание 
9.  Полет вверх вниз + выстрелы
10. Ожидание ------ 3
11. Смерть
*/

#endregion

#region таймеры
	t1 = 0; 
	t2 = 0;
	t3 = 0;
	t4 = 0; 
	t5 = 0;
	t6 = 0;
	t7 = 0; 
	t8 = 0;
	t9 = 0;
	t10 = 0; 
	t11 = 0;
	t12 = 0;
	t13 = 0; 
	t14 = 0;
#endregion


hspd = 0;
vspd = 0;
state = 1;
hit_cd = 0;
enemy_hp = 2;
