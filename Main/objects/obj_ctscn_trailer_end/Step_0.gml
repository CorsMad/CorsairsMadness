/// @description Insert description here
// You can write your code in this editor
if t< 500
{
    t++;   
}

switch(t)
{
    case 200:   var i1 = instance_create_depth(240,96,depth,obj_ctscn_trailer_end_title)   ;
                i1.image_xscale = 2;
                i1.image_yscale = 2;
                break;
    case 350:   var i2 = instance_create_depth(room_width/2,224,depth,obj_ctscn_trailer_end_logo);
                i2.image_xscale = 0.75;
                i2.image_yscale = 0.75;
}