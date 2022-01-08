/// @description Insert description here
// You can write your code in this editor

if state = 0
{
    t++;
    if t = 150
    {
        t = 0;
        state = 1;
    }
}
 
if state = 1
{
 
    t++;
    switch(t)
    {
        case 1: instance_create_depth(215,110,0,obj_ctscn_trailer_q3);break;
        case 25: instance_create_depth(140,160,0,obj_ctscn_trailer_q1);break;
        case 50: instance_create_depth(265,160,0,obj_ctscn_trailer_q2);break;
        //case 300: t = 0;break;
    }
    if t2 < 1001
    {
        t2++;
    }
    switch(t2)
    {
        case 25:   instance_create_depth(144,112,0,obj_ctscn_trailer_floatfaces);
                    var i1 = instance_create_depth(176,64,0,obj_ctscn_trailer_floatfaces);
                    i1.image_index = 1;
                    var i2 = instance_create_depth(224,48,0,obj_ctscn_trailer_floatfaces);
                    i2.image_index = 2;
                    var i3 = instance_create_depth(272,64,0,obj_ctscn_trailer_floatfaces);
                    i3.image_index = 3;
                    var i4 = instance_create_depth(304,112,0,obj_ctscn_trailer_floatfaces);
                    i4.image_index = 4;
                    break;
        case 1000:  instance_destroy();
    }
}