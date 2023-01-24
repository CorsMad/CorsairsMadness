/// @description Insert description here
// You can write your code in this editor
instance_create_depth(x,y,0,obj_room_transition_black_screen);

if instance_exists(obj_Player)
{
   if obj_Player.y <= 224 instance_create_depth(0,0,0,obj_destruct_creator_d1r9);
}

