/// @description Insert description here
// You can write your code in this editor
var dpistolhit = instance_place(x,y,obj_player_boat_parrotcage_t1);
if dpistolhit != noone
{
    instance_destroy();
    dpistolhit.a = 1;
}