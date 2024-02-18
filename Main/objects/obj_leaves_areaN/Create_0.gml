/// @description Insert description here
// You can write your code in this editor

a = 0;
image_speed = 0;
sprite_index = spr_jungle_leaves
if place_meeting(x-1,y,obj_leaves_areaN) && place_meeting(x+1,y,obj_leaves_areaN){
	image_index = 1;
} else if place_meeting(x-1,y,obj_leaves_areaN) && !place_meeting(x+1,y,obj_leaves_areaN) {
	image_index = 2;
} else if !place_meeting(x-1,y,obj_leaves_areaN) && place_meeting(x+1,y,obj_leaves_areaN) {
	image_index = 0;	
}