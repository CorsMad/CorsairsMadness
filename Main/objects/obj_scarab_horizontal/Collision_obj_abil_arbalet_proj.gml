/// @description Insert description here
// You can write your code in this editor



if shocked = 0
{
    fnc_snd_play_onetime(snd_enemy_bigscarab_el);
    trigger = 0;
    shocked = 1;
    attack_timer = 0;
    spd = 0;
    other.isDead = 1;   
}