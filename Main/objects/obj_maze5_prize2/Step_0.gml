/// @description Insert description here
// You can write your code in this editor
t++;
switch(t)
{
	case 1:var k = instance_create_depth(x,y-16,-1,obj_money10);
		   k.hspd  = random_range(-20,20)/20; break;
	case 5:var k = instance_create_depth(x,y-16,-1,obj_money10);
		   k.hspd = random_range(-20,20)/20; break;
	case 10:var k = instance_create_depth(x,y-16,-1,obj_money10);
			k.hspd = random_range(-20,20)/20; break;
	case 15:var k = instance_create_depth(x,y-16,-1,obj_money10);
		   k.hspd = random_range(-20,20)/20; break;
	case 20:var k = instance_create_depth(x,y-16,-1,obj_money20);
		   k.hspd = random_range(-20,20)/20; break;
	case 25:var k = instance_create_depth(x,y-16,-1,obj_money20);
		   k.hspd = random_range(-20,20)/20; break;
	case 30:var k = instance_create_depth(x,y-16,-1,obj_money20);
		   k.hspd = random_range(-20,20)/20; break;
	case 50: instance_create_depth(x,y,depth,obj_silver_key_creator);
	case 60: instance_destroy();
}