/// @description Insert description here
// You can write your code in this editor

if isOn = -1
{
    if image_alpha < 1 image_alpha +=0.05;
    if image_alpha mod 0.1 = 0 instance_create_depth(x+random_range(-14,14),y+random_range(-14,-2),depth-1,obj_abil_boots_particles);
    if image_alpha >= 1 isOn = 0;
}



if isOn = 0 && (place_meeting(x,y,obj_hitbox) || place_meeting(x,y,obj_item_boomerang))
{
    fnc_snd_play_over(snd_chest_destruct);
	isOn = 1;
	image_speed = 1;
    obj_endurance_graveyard.state = 1.51;
    obj_endurance_graveyard.t = 0;
}
if (image_index > image_number - 1) && isOn = 1
{
    image_speed = 0;
}
if isOn = 1 && a < 42
{
	a++;
}

switch(a)
{
	case 1 : var hp = instance_create_depth(x,y-16,depth-1,obj_hpmax_gain_gift);
             hp.hspd = 0;
             instance_create_depth(x,y-16,-1,obj_money1); 
             instance_create_depth(x,y-16,-1,obj_money1); 
             instance_create_depth(x,y-16,-1,obj_money1);   break;		
    case 5:  instance_create_depth(x,y-16,-1,obj_money1);    
             instance_create_depth(x,y-16,-1,obj_money1); 	   
             instance_create_depth(x,y-16,-1,obj_money1);   break;	   
    case 10: instance_create_depth(x,y-16,-1,obj_money10); 	   
             instance_create_depth(x,y-16,-1,obj_money10);  break;	   
    case 15: instance_create_depth(x,y-16,-1,obj_money10);  
             instance_create_depth(x,y-16,-1,obj_money10);  break;    
    case 20: instance_create_depth(x,y-16,-1,obj_money20);  
             instance_create_depth(x,y-16,-1,obj_money20);  break;   
    case 25: instance_create_depth(x,y-16,-1,obj_money20);  	   
             instance_create_depth(x,y-16,-1,obj_money20);  break; 
    case 30: instance_create_depth(x,y-16,-1,obj_money50);  break;   
    case 35: instance_create_depth(x,y-16,-1,obj_money50);  break;	   
    case 40: instance_create_depth(x,y-16,-1,obj_money50);  break; 
}
