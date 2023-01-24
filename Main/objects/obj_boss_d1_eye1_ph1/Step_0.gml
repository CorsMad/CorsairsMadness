if state = 0
{
    t++;
    if t = 200
    {
        state = 1;   
        t = 0;
    }
}

if state = 1
{
 t++;
 if t = 50 
 {
     obj_boss_d1_2.state = 2;
     obj_boss_d1_2.t = 0;
     instance_destroy();
     
 }
}