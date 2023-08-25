/// @description Insert description here
// You can write your code in this editor
instance_create_depth(x,y,0,obj_room_transition_black_screen);
instance_create_depth(186,240,100,obj_npc_desertv_merch)   

switch(global.completed_PD2)
{
    case 0:
        var i = instance_create_depth(119,240,depth,obj_teleport_junglevillage);
        i.TargetRoom = Village_desert;
        i.TargetX = 734;
        i.TargetY = 240;
        break;
    case 1:
        instance_create_depth(48,208,1,obj_desert_coin_exchanger);
        
        if global.dia_desertMerch_f_talk = 1
        {
            var i = instance_create_depth(119,240,depth,obj_teleport_junglevillage);
                i.TargetRoom = Village_desert;
                i.TargetX = 734;
                i.TargetY = 240;   
        }
        break;
}

#region указатель
if global.dia_desertChief != 0 && global.dia_desertMerch = 0
{
    var p = instance_create_depth(184,151,0,obj_npc_village_pointer)   ;
    p.village = 2;
    p.position = 2;
}
#endregion