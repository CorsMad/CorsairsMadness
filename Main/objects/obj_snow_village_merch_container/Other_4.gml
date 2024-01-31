/// @description Insert description here
// You can write your code in this editor
instance_create_depth(x,y,0,obj_room_transition_black_screen);
instance_create_depth(186,240,100,obj_npc_snowv_merch)   

switch(global.completed_PS2)
{
    case 0:
        var i = instance_create_depth(119,240,depth,obj_teleport_junglevillage);
        i.TargetRoom = Village_snow;
        i.TargetX = 520;
        i.TargetY = 240;
        break;
    case 1:
        instance_create_depth(58,240,1,obj_snow_coin_exchanger);
    
        if global.dia_snowMerch_f_talk = 1
        {
            var i = instance_create_depth(119,240,depth,obj_teleport_junglevillage);
                i.TargetRoom = Village_snow;
                i.TargetX = 520;
                i.TargetY = 240;   
				i.pointer = instance_create_depth(x,y-58,1,obj_icon_pointerup);
        }
        break;
}
