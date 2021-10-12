/// @description Insert description here
// You can write your code in this editor

player_input();

#region Стрельба из пистолета
    a = image_index ;

    if b != 0
    {
        b++;       
    }

    if b = 7 
    {
        image_index++;   
    }
    if b = 14
    {
        b = 0;   
    }

    if image_index > 3
    {
        image_index = 0;   
    }

    if key_attack_press && b = 0 && ((image_index = 0) || (image_index = 2))
    {
        if image_index = 0
        {
            instance_create_depth(x+18,y-28,-1,obj_sfx1)
            instance_create_depth(x+18,y-28,-1,obj_sfx3)
        }
        if image_index = 2
        {
            instance_create_depth(x+14,y-28,-1,obj_sfx1)
            instance_create_depth(x+14,y-28,-1,obj_sfx3)   
        }
        image_index++;
        b = 1;
        
        instance_create_depth(x+18,y-28,-1,obj_player_boat_pistol_projectile);
        instance_create_depth(x,y-36,-1,obj_Player_boat_used_pistol);
    }
#endregion

#region Покачивание
 /*  
    if toup = 1
    {
        rotat +=0.05;
        if rotat = 3
        {
            toup = 0;       
        }
    }
    
    if toup = 0
    {
        rotat -=0.05;
        if rotat = 0
        {
            toup = 1;       
        }
    }
    */
    
    if toup = 1
    {
        yob +=0.075;
        if yob = 3
        {
            toup = 0;       
        }
    }
    
    if toup = 0
    {
        yob -=0.075;
        if yob = 0
        {
            toup = 1;       
        }
    }
#endregion

#region Перемещение

xx = key_right - key_left;
yy = key_down - key_up;


hspd = xx*spd; 
vspd = yy*spdv; 

#region Pixel Perfect Collision

// Horz collision
if(place_meeting(x + hspd, y, obj_block))
 {
  while(!place_meeting(x + sign(hspd), y, obj_block))
  {
   x += sign(hspd);
  }
   hspd = 0;
 }
 
x += hspd;

// Vert collision
if(place_meeting(x, y + vspd, obj_block))
 {
  while(!place_meeting(x, y + sign(vspd), obj_block))
  {
   y += sign(vspd);
  }
   vspd = 0;
 }
 
y += vspd;

#endregion


#endregion