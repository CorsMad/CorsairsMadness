/// @description Insert description here
// You can write your code in this editor
instance_create_depth(x,y,0,obj_room_transition_black_screen);
instance_create_depth(416,240,100,obj_npc_lavav_merch)   

switch(global.completed_PL2)
{
    case 0:
        var i = instance_create_depth(214,240,depth,obj_teleport_junglevillage);
        i.TargetRoom = Village_lava;
        i.TargetX = 320;
        i.TargetY = 240;
        break;
    case 1:
        instance_create_depth(320,240,1,obj_lava_coin_exchanger);
        if global.dia_vulcanoMerch_f_talk = 1
        {
            var i = instance_create_depth(214,240,depth,obj_teleport_junglevillage);
                i.TargetRoom = Village_lava;
                i.TargetX = 320;
                i.TargetY = 240;   
        }
        break;
}

#region указатель
if global.dia_lavaChief = 0 
{
    var p1 = instance_create_depth(64,144,0,obj_npc_village_pointer)   ;
    p1.village = 5;
    p1.position = 1;
}



#endregion
