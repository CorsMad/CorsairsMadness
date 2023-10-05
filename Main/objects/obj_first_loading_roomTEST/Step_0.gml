/// @description Insert description here
// You can write your code in this editor

if t1 < 12
{
    t1++;
}

if t1 = 10
{  
/*
1 - boots
2 - флейта
3 - бумеранг
4 - арбалет
5 - коньки
*/

// 1 - hook, 2 - teleport, 3 - superdash , 4 - doublejump, 5 - clone

    //room_goto(GlobalMapPrologueDesert)
    //room_goto(GlobalMapLast)
    //room_goto(JungleVillageArrive);
	
   var i = instance_create_depth(16,16,0,obj_Player);
   i.DashEnabled = 1;
   i.state = 0;
   i.specabilnumber = 1;
   i.HookEnabled = 1;
   i.SpecAbilMask = 3;       
   instance_create_depth(16,16,101,obj_room_transition_to_loading);  
	
}
