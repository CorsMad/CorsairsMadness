/// @description Insert description here
// You can write your code in this editor
instance_create_depth(x,y,0,obj_room_transition_black_screen);

instance_create_depth(160,240,100,obj_trapspikes);
var o1 = instance_create_depth(384,256,100,obj_enemy_creator_behind);
o1.obj_cr = obj_plant;
o1.x_cr = 384;
o1.y_cr = 256;


if instance_exists(obj_Player)
{
    if obj_Player.x < room_width/2
    {
        instance_create_depth(304,128,100,obj_plant)   
    }
    if obj_Player.x > room_width/2
    {
        var e1 = instance_create_depth(304,128,100,obj_plant);   
        e1.image_xscale = -1;
    }
}