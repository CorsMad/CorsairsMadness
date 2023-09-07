/// @description Insert description here
// You can write your code in this editor
oleg = instance_create_depth(x,y,depth-1,obj_frozen_mage_eyes);
oleg.fol = id;


state = 0;
t = 0;
can_hit = 0;
place = 0;
isAttacking = 0;
place_max = 3;
place_goto = 0;

#region места передвижения

pg0x = 64
pg0y = 208

pg1x = 192
pg1y = 144

pg2x = 288
pg2y = 144

pg3x = 416
pg3y = 208

#endregion

enemy_hp = 2;
hit_cd = 0;