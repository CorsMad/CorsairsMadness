/// @description Insert description here
// You can write your code in this editor

	t++;
	switch(t)
	{
		case 100    :   instance_create_depth(240, -16,depth-1, obj_maze5_coin_10 ); break;	
		case 200    :	instance_create_depth(360, -16,depth-1, obj_maze5_coin_10 ); break;	
		case 300    :	instance_create_depth(360, -16,depth-1, obj_maze5_coin_10 ); break;	
		case 400    :	instance_create_depth(100, -16,depth-1, obj_maze5_coin_30 ); break;	
		case 450    :	instance_create_depth(100, -16,depth-1, obj_maze5_coin_m20); break;	
		case 600    :	instance_create_depth(360, -16,depth-1, obj_maze5_coin_10 ); break;	
		case 700    :	instance_create_depth(240, -16,depth-1, obj_maze5_coin_30 ); break;	
		case 750    :	var i1=instance_create_depth(240, -16,depth-1, obj_maze5_coin_m20);i1.vspd = 2; break;		
		case 900    :	instance_create_depth(140, -16,depth-1, obj_maze5_coin_10 ); break;	
		case 950    :	instance_create_depth(240, -16,depth-1, obj_maze5_coin_10 ); break;	
		case 1000   :	instance_create_depth(360, -16,depth-1, obj_maze5_coin_30 ); break;	
		case 1050   :	instance_create_depth(240, -16,depth-1, obj_maze5_coin_10 ); break;	
		case 1075   :	instance_create_depth(240, -16,depth-1, obj_maze5_coin_10 ); break;	
		case 1125   :	var i2=instance_create_depth(240, -16,depth-1, obj_maze5_coin_m20);i2.vspd = 2; break;		
		case 1200   :	instance_create_depth(100, -16,depth-1, obj_maze5_coin_30 ); break;	
		case 1300   :	instance_create_depth(360, -16,depth-1, obj_maze5_coin_10 ); break;	
		case 1350   :   var i3=instance_create_depth(360, -16,depth-1, obj_maze5_coin_m20);i3.vspd = 2; break;		
		case 1400   :	instance_create_depth(240, -16,depth-1, obj_maze5_coin_30 ); break;	
		case 1500   :	var i4=instance_create_depth(240, -16,depth-1, obj_maze5_coin_m20);i4.vspd = 2; break;instance_create_depth(250, -16,depth-1, obj_maze5_coin_m20); break;	
		case 1600   :	var i5=instance_create_depth(360, -16,depth-1, obj_maze5_coin_10);i5.vspd = 2; break;
		case 1700   :	var i6=instance_create_depth(360, -16,depth-1, obj_maze5_coin_30);i6.vspd = 2; break;
		case 1800   :	var i7=instance_create_depth(360, -16,depth-1, obj_maze5_coin_m20);i7.vspd = 2; break;	
		case 1850   :	instance_create_depth(360, -16,depth-1, obj_maze5_coin_10 ); break;	
		case 1900   :	var i8=instance_create_depth(240, -16,depth-1, obj_maze5_coin_m20);i8.vspd = 2; break;		
		case 2000   :	instance_create_depth(240, -16,depth-1, obj_maze5_coin_10 ); break;
	}

if t > 2000 && !instance_exists(obj_maze5_coin_10) && !instance_exists(obj_maze5_coin_30) && !instance_exists(obj_maze5_coin_m20) 
{
    obj_maze5_starter.count = 1;
    obj_maze5_starter.score_count = score_count;
    instance_destroy();
}