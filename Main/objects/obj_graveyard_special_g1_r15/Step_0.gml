/// @description Insert description here
// You can write your code in this editor

if place_meeting(x,y,obj_Player)
{
    for (var i = 0; i < 3; i+=1;) {
        instance_create_depth(16+i*16,48,0,obj_block_shadow);        
    }   
    for (var k = 0; k < 3; k+=1;) {
        instance_create_depth(448,160+k*16,0,obj_block_shadow);        
    }   
    instance_create_depth(0,0,0,obj_graveyard_fight_controller_g1_r15);
    instance_destroy()
}