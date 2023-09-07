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

y = start - sin(a/10)*64;

t_create++;
if t_create mod 30 = 0{
	var eball1_aoe = instance_create_depth(x,y,depth,obj_item_eball_aoe3);
	eball1_aoe.own = id;
}

