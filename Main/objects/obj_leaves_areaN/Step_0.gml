/// @description Insert description here
// You can write your code in this editor

if place_meeting(x,y,obj_Player) && a = 0 && (obj_Player.hspd !=0 || obj_Player.vspd !=0)
{
   instance_create_depth(obj_Player.x,obj_Player.y-8,1,obj_leaf);
   a = 1;
}

if a != 0 {
   a+=1;
}
if a >=10 {
   a = 0;
}

