/// @description Insert description here
// You can write your code in this editor

fnc_snd_play_onetime(snd_enemy_bigscarab_el);

if shocked = 0
{
    trigger = 0;
    shocked = 1;
    attack_timer = 0;
    spd = 0;
    other.isDead = 1;   
}