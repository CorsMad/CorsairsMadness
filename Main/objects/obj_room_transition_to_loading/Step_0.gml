/// @description Insert description here
// You can write your code in this editor
if place_meeting(x,y,obj_Player) 
{

room_goto(LoadingRoom);

obj_Player.x = 97;
obj_Player.y = 121;
 
 if instance_exists(obj_room_transition_black_screen_death) instance_destroy(obj_room_transition_black_screen_death);
}