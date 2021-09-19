/// @description Insert description here
// You can write your code in this editor

#region depth
depth = -y;
#endregion

#region Movement
Key_right = keyboard_check(vk_right);
Key_left = keyboard_check(vk_left);
Key_down = keyboard_check(vk_down);
Key_up = keyboard_check(vk_up);
Key_action = keyboard_check(vk_space);

xx = Key_right - Key_left;
yy = Key_down - Key_up;


hspd = xx*spd; //Your speed(spd) Variable in create event
vspd = yy*spd; //Your speed(spd) Variable in create event
#endregion

#region Pixel Perfect Collision

// Horz(x) speed collision
if(place_meeting(x + hspd, y, oWall))
 {
  while(!place_meeting(x + sign(hspd), y, oWall))
  {
   x += sign(hspd);
  }
   hspd = 0;
 }
 
x += hspd;

// Vert(y) speed collision
if(place_meeting(x, y + vspd, oWall))
 {
  while(!place_meeting(x, y + sign(vspd), oWall))
  {
   y += sign(vspd);
  }
   vspd = 0;
 }
 
y += vspd;

#endregion

#region Animation

if hspd = 0 && vspd = 0
{
    sprite_index = sPlayerIdle;
} else sprite_index = sPlayerWalk;

if hspd !=0 
{
    image_xscale = sign(hspd);   
}
#endregion