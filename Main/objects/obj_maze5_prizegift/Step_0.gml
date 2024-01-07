/// @description Insert description here
// You can write your code in this editor

if prize1 = 1
{
    obj_maze5_prize1_pic.isOn = 1;
    prize1 = 0;
    var k1 = instance_create_depth(x,y-16,-1,obj_money1);
    k1.hspd  = random_range(-20,20)/20; 
    var k2 = instance_create_depth(x,y-16,-1,obj_money1);
    k2.hspd = random_range(-20,20)/20; 
    var k3 = instance_create_depth(x,y-16,-1,obj_money1);
    k3.hspd = random_range(-20,20)/20; 
    var k4 = instance_create_depth(x,y-16,-1,obj_money10);
    k4.hspd = random_range(-20,20)/20; 
    var k5 = instance_create_depth(x,y-16,-1,obj_money1);
    k5.hspd = random_range(-20,20)/20; 
    var k6 = instance_create_depth(x,y-16,-1,obj_money10);
    k6.hspd = random_range(-20,20)/20; 
    var k7 = instance_create_depth(x,y-16,-1,obj_money10);
    k7.hspd = random_range(-20,20)/20; 
}

if prize2 = 1
{
    obj_maze5_prize2_pic.isOn = 1;
    instance_create_depth(112,192,-500,obj_silver_key_creator);
    prize2 = 0;
}

if prize3 = 1
{
    obj_maze5_prize3_pic.isOn = 1;
    obj_maze5_trigger.isActive = 3;
    prize3 = 0;
    var l1 = instance_create_depth(x,y-16,-1,obj_money10);
    l1.hspd  = random_range(-20,20)/20; 
    var l2 = instance_create_depth(x,y-16,-1,obj_money20);
    l2.hspd = random_range(-20,20)/20; 
    var l3 = instance_create_depth(x,y-16,-1,obj_money20);
    l3.hspd = random_range(-20,20)/20; 
    var l4 = instance_create_depth(x,y-16,-1,obj_money20);
    l4.hspd = random_range(-20,20)/20; 
    var l5 = instance_create_depth(x,y-16,-1,obj_money20);
    l5.hspd = random_range(-20,20)/20; 
    var l6 = instance_create_depth(x,y-16,-1,obj_money20);
    l6.hspd = random_range(-20,20)/20; 
    var l7 = instance_create_depth(x,y-16,-1,obj_money20);
    l7.hspd = random_range(-20,20)/20; 
    var l8 = instance_create_depth(x,y-16,-1,obj_money20);
    l8.hspd  = random_range(-20,20)/20; 
    var l9 = instance_create_depth(x,y-16,-1,obj_money20);
    l9.hspd = random_range(-20,20)/20; 
    var l10 = instance_create_depth(x,y-16,-1,obj_money20);
    l10.hspd = random_range(-20,20)/20; 
    var l11 = instance_create_depth(x,y-16,-1,obj_money20);
    l11.hspd = random_range(-20,20)/20; 
    var l12 = instance_create_depth(x,y-16,-1,obj_money20);
    l12.hspd = random_range(-20,20)/20; 
    var l13 = instance_create_depth(x,y-16,-1,obj_money20);
    l13.hspd = random_range(-20,20)/20; 
    var l14 = instance_create_depth(x,y-16,-1,obj_money20);
    l14.hspd = random_range(-20,20)/20; 
    var l15 = instance_create_depth(x,y-16,-1,obj_money20);
    l15.hspd = random_range(-20,20)/20; 
    var l16 = instance_create_depth(x,y-16,-1,obj_money20);
    l16.hspd = random_range(-20,20)/20; 
    var l17 = instance_create_depth(x,y-16,-1,obj_money20);
    l17.hspd = random_range(-20,20)/20; 
    var l18 = instance_create_depth(x,y-16,-1,obj_money20);
    l18.hspd = random_range(-20,20)/20;    
}