/// @description Insert description here
// You can write your code in this editor


if other.state = 0
{
    instance_destroy();
}
    
if enemy_hp < 1
{
    instance_destroy();   
    other.enemy_hp -= 6;   
}