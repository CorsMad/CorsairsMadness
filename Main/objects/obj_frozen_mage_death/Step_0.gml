/// @description Insert description here
// You can write your code in this editor
t++;
switch(t)
{
    case 1:     instance_create_depth(x,y,-1,obj_sfx_explosion);
                fnc_drop_mana_gold_after_death(30,45)
                break;
    case 5: instance_destroy();
}   