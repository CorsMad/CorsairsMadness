/// @description Insert description here
// You can write your code in this editor
x+=hspd;
a+=1;
if a = a_max 
{
    isDead = 1   
}
if isDead = 1
{
    instance_destroy();   
}

t_create++;
if t_create mod 50 = 0{
	var eball1_aoe = instance_create_depth(x,y,depth,obj_item_eball_aoe1);
	eball1_aoe.own = id;
}

