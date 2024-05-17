/// @description Insert description here
// You can write your code in this editor
var def = instance_place(x,y,obj_abil_arbalet_proj)
    if def!= noone
    {
        fnc_snd_play_onetime(snd_enemy_sander_el);
        def.isDead = 1;
    }