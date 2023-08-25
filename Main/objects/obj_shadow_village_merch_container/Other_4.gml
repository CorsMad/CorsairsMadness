/// @description Insert description here
// You can write your code in this editor
instance_create_depth(x,y,0,obj_room_transition_black_screen);
instance_create_depth(186,240,100,obj_npc_shadowv_merch)   

switch(global.completed_PG2)
{
    case 0:
        var i = instance_create_depth(119,240,depth,obj_teleport_junglevillage);
        i.TargetRoom = Village_shadow;
        i.TargetX = 692;
        i.TargetY = 240;
        break;
    case 1:
        instance_create_depth(48,208,1,obj_shadow_coin_exchanger);
        if global.dia_shadowMerch_f_talk = 1
        {
            var i = instance_create_depth(119,240,depth,obj_teleport_junglevillage);
                i.TargetRoom = Village_shadow;
                i.TargetX = 692;
                i.TargetY = 240;   
        }
        break;
}

#region указатель
if global.dia_shadowChief != 0 && global.dia_shadowMerch = 0
{
    var p = instance_create_depth(184,151,0,obj_npc_village_pointer)   ;
    p.village = 4;
    p.position = 2;
}
#endregion
