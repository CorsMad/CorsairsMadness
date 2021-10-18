/// @description Insert description here
// You can write your code in this editor

player_input();

#region режимы Стрельбы 

#region Обычный пистолет

if state = 0
{

    a = image_index ;

    if b != 0
    {
        b++;       
    }

    if b = b_mid
    {
        image_index++;   
    }
    if b = b_mid*2
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

}

#endregion
if bonus_cd!= 0
{
    bonus_cd++;   
}
if bonus_cd >= bonus_cd_max
    {
        bonus_cd = 0;
        b_mid = 14;
    }


#region Быстрый пистолет

if state = 1
{
    bonus_cd++;  
    b_mid = 7;
    a = image_index ;

    if b != 0
    {
        b++;       
    }

    if b = b_mid
    {
        image_index++;   
    }
    if b = b_mid*2
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
         
        instance_create_depth(x+18,y-28,-1,obj_player_boat_pistol_projectile);
        instance_create_depth(x,y-36,-1,obj_Player_boat_used_pistol);
        
        image_index++;
        b = 1;
    }
    
    
    //выход
    if bonus_cd >= bonus_cd_max
    {
        bonus_cd = 0;
        state = 0;
        b_mid = 14;
        b = 0;
        image_index = 0;
    }
}


#endregion

#endregion


#region Покачивание

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