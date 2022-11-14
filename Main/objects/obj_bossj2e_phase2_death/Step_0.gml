/// @description Insert description here
// You can write your code in this editor
t++;
if t > 40
{

    x+=hspd;

    if hspd > 0 && hspd < 4 hspd +=0.1;
    if hspd < 0 && hspd > -4 hspd -=0.1;

    if sign(hspd) > 0 && x > 500
    {
        obj_boss2je_controller.state = 5.1;
        instance_destroy(obj_boss2_wings);
        instance_destroy(m);
        instance_destroy();   
    }
    if sign(hspd) < 0 && x < -100
    {
        obj_boss2je_controller.state = 5.1;
        instance_destroy(obj_boss2_wings);
        instance_destroy(m);
        instance_destroy();   
    }
}
