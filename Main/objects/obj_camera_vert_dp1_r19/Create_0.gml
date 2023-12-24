/// @description Insert description here
// You can write your code in this editor
state= 0;
conf = 0;
instance_create_depth(x,y,depth,obj_combometer) ;
if instance_exists(obj_Player){
 if obj_Player.y < room_height/2 y = 0 else y = room_height;   
}