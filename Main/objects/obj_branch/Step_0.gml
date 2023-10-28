/// @description Insert description here
// You can write your code in this editor

if place_meeting(x-1,y,obj_branch) && place_meeting(x+1,y,obj_branch){
     image_index = 1; 
} else if !place_meeting(x-1,y,obj_branch) && place_meeting(x+1,y,obj_branch){  
     image_index = 0;   
} else if place_meeting(x-1,y,obj_branch) && !place_meeting(x+1,y,obj_branch){ 
     image_index = 2;   
} else if !place_meeting(x-1,y,obj_branch) && !place_meeting(x+1,y,obj_branch){
     image_index = 3;   
}


if place_meeting(x,y,obj_Player){
    instance_create_depth(x,y-3,depth,obj_branch_destr);
    instance_destroy();   
}











