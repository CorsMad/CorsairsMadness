/// @description Insert description here
// You can write your code in this editor


// main stats

global.hp = global.hp_max;
global.mana = global.mana_max;

scr_create_array_objects();

// weapon controller

/*
1 - бумеранг
2 - топор
3 - бомба
*/

// Восстановление после смерти
if instance_exists(obj_Player)
{
	obj_Player.isDead = 0;
	obj_Player.death_timer = 0;
	obj_Player.image_alpha = 1;
	obj_Player.image_blend = c_white;
    if  obj_Player.state = 1
    {
        instance_create_depth(0,0,0,obj_music_controller_temple);   
    }
    if obj_Player.state = 0
    {
        instance_create_depth(0,0,0,obj_music_controller_jungle)    
        
    }
}