/// @description Insert description here
// You can write your code in this editor

if place_meeting(x,y,obj_cube) && obj_cube.sliding = 0 && obj_cube.isGrounded = 0{
    with(obj_cube){
       sliding = 1;    
       //vspd = -abs(hspd)
       //hspd = hspd;
       vspd = 8
       hspd = -8;    
    }
}