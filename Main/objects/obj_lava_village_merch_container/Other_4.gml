/// @description Insert description here
// You can write your code in this editor
instance_create_depth(x,y,0,obj_room_transition_black_screen);
instance_create_depth(336,240,100,obj_npc_lavav_merch)   

switch(finished)
{
    case 0:
        var i = instance_create_depth(238,240,depth,obj_teleport_junglevillage);
        i.TargetRoom = Village_lava;
        i.TargetX = 368;
        i.TargetY = 240;
        break;
    case 1:
        if global.dia_vulcanoMerch_f_talk = 1
        {
            var i = instance_create_depth(238,240,depth,obj_teleport_junglevillage);
                i.TargetRoom = Village_lava;
                i.TargetX = 368;
                i.TargetY = 240;   
        }
        break;
}

