/// @description Insert description here
// You can write your code in this editor

x+=hspd;
image_xscale = -sign(hspd);
if sign(hspd) > 0 && x > 576
{
    if instance_exists(obj_boss2_wings) instance_destroy(obj_boss2_wings);
    obj_boss2_controller.state = future_state;
    obj_boss2_controller.t = 0;
    instance_destroy(m);
    instance_destroy();
}
if sign(hspd) < 0 && x < -100
{
    if instance_exists(obj_boss2_wings) instance_destroy(obj_boss2_wings);
    obj_boss2_controller.state = future_state;
    obj_boss2_controller.t = 0;
    instance_destroy(m);
    instance_destroy();
}


