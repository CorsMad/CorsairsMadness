/// @description Insert description here
// You can write your code in this editor
if place_meeting(x,y,obj_enemy_parent_combo) && getCombo = 0
{
    obj_Player.comboTimer = 28;
    obj_Player.comboMeter +=1;
    getCombo = 1;
    fnc_combo_finisher_add();
}
/*
if obj_Player.isDead != 12
{
    instance_destroy();   
}