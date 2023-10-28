/// @description Insert description here
// You can write your code in this editor

#region указатель
if global.dia_desertChief = 0 
{
    var p = instance_create_depth(79,78,0,obj_npc_village_pointer)   ;
    p.village = 4;
    p.position = 1;
}
#endregion


if global.completed_PG2 = 0 {
    instance_create_depth(208,144,100,obj_shadow_amulet);
    instance_create_depth(256,240,100,obj_shadow_amulet);
    instance_create_depth(384,192,100,obj_shadow_amulet);
}