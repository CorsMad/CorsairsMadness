/// @description Insert description here
// You can write your code in this editor
t++;

switch(t)
{
	case 215:   instance_create_depth(x,y,depth-1,obj_sfx_explosion_bomb);
                fnc_snd_play_over(snd_boss_death);
				break;
	case 220:	instance_create_depth(x,y,depth+1,obj_boss1_d1_spirit0);break;
	case 240:	instance_create_depth(x,y,depth+1,obj_boss1_d1_spirit1);break;
	case 260:	instance_create_depth(x,y,depth+1,obj_boss1_d1_spirit1);break;               
	case 280:	instance_create_depth(x,y,depth+1,obj_boss1_d1_spirit1);break;
	case 300:	instance_create_depth(x,y,depth+1,obj_boss1_d1_spirit1);break;
    case 320:	instance_create_depth(x,y,depth+1,obj_boss1_d1_spirit1);break;
    case 340:	instance_create_depth(x,y,depth+1,obj_boss1_d1_spirit1);break; 
    case 360:	instance_create_depth(x,y,depth+1,obj_boss1_d1_spirit1);break;
    case 380:	instance_create_depth(x,y,depth+1,obj_boss1_d1_spirit1);break;
    case 400:	instance_create_depth(x,y,depth+1,obj_boss1_d1_spirit1);break;
    case 420:	instance_create_depth(x,y,depth+1,obj_boss1_d1_spirit1);break; 
    case 440:	instance_create_depth(x,y,depth+1,obj_boss1_d1_spirit1);break;
    case 460:	instance_create_depth(x,y,depth+1,obj_boss1_d1_spirit1);break;
    case 480:	instance_create_depth(x,y,depth+1,obj_boss1_d1_spirit1);break;
    case 500:	instance_create_depth(x,y,depth+1,obj_boss1_d1_spirit1);break;
    case 520:	instance_create_depth(x,y,depth+1,obj_boss1_d1_spirit1);break;  
    case 540:	instance_create_depth(x,y,depth+1,obj_boss1_d1_spirit1);break;
    case 560:	instance_create_depth(x,y,depth+1,obj_boss1_d1_spirit1);break;
    case 580:	instance_create_depth(x,y,depth+1,obj_boss1_d1_spirit1);break;
    case 600:	instance_create_depth(x,y,depth+1,obj_boss1_d1_spirit1);break; 
    case 620:	instance_create_depth(x,y,depth+1,obj_boss1_d1_spirit1);break;
    case 640:	instance_create_depth(x,y,depth+1,obj_boss1_d1_spirit1);break;
    case 660:	instance_create_depth(x,y,depth+1,obj_boss1_d1_spirit1);break;
    case 680:	instance_create_depth(x,y,depth+1,obj_boss1_d1_spirit1);break; 
    case 700:	instance_create_depth(x,y,depth+1,obj_boss1_d1_spirit1);break;
    case 720:	instance_create_depth(x,y,depth+1,obj_boss1_d1_spirit1);break;
    
}


if instance_exists(obj_boss1_big_projectile_creator)
{
	instance_destroy(obj_boss1_big_projectile_creator);
}
if instance_exists(obj_boss1_small_projectile_creator)
{
	instance_destroy(obj_boss1_small_projectile_creator);
}

