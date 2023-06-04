
t++;
if t = 100
{       
    var t1 = instance_create_depth(416,112,-112,obj_boat_boss_shadow_utent);
    var t2 = instance_create_depth(416,240,-240,obj_boat_boss_shadow_dtent); 
    t1.t = -400;
    t2.t = -650;
}
    
if t = 200
{
    instance_destroy();
    instance_create_depth(x,y,depth,obj_boat_boss_shadow_1);   
}
