/// @description Insert description here
// You can write your code in this editor
instance_create_depth(x,y,0,obj_room_transition_black_screen);

if instance_exists(obj_Player){
	if obj_Player.y < 224 {
		instance_create_depth(816,168,0,obj_jngl_lvl2_passage_br3);
	}
}