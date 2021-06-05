/// @description Insert description here
// You can write your code in this editor
instance_create_depth(x,y,0,obj_room_transition_black_screen);

instance_create_depth(256,128,0,obj_skeleton_l);
instance_create_depth(880,176,0,obj_skeleton_l);
instance_create_depth(960,128,0,obj_plant);
if instance_exists(obj_Player)
{
    if obj_Player.x < room_width/2
    {
        instance_create_depth(1152,128,0,obj_plant);   
    } else  
        {
            var e1 = instance_create_depth(1152,128,0,obj_plant);
            e1.image_xscale = -1;
        }
}

instance_create_depth(176,32,0,obj_blob_creator);
instance_create_depth(720,32,0,obj_blob_creator);
instance_create_depth(1216,32,0,obj_blob_creator);
var o1 = instance_create_depth(432,48,0,obj_enemy_creator);
o1.x_cr = 725;
o1.y_cr = 208;
o1.obj_cr = obj_bird_horizontal_waving_l;
o1.image_yscale = 19;

instance_create_depth(416,208,0,obj_platform_3_h_e);