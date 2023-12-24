/// @description Insert description here
// You can write your code in this editor

if isOn = 0 && (place_meeting(x,y,obj_hitbox) || place_meeting(x,y,obj_item_boomerang))
{
    fnc_snd_play_onetime(snd_chest_destruct);
	isOn = 1;
	image_speed = 1;
    global.chest_d2b_r5 = 0;
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
	case 1 : instance_create_depth(x,y-16,-1,obj_money1); 
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
