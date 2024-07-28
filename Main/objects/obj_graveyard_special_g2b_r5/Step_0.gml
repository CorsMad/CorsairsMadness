/// @description Insert description here
// You can write your code in this editor

if place_meeting(x,y,obj_Player)
{
    //for (var i = 0; i < 3; i+=1;) {
    //    instance_create_depth(16+i*16,128,100,obj_block_shadow);        
    //}   
    for (var k = 0; k < 3; k+=1;) {
        instance_create_depth(384,160+k*16,100,obj_block_shadow);        
    }
    for (var l = 0; l < 3; l+=1;) {
        instance_create_depth(400,160+l*16,100,obj_block_shadow);        
    }
    instance_create_depth(0,0,0,obj_graveyard_fight_controller_g2b_r5);
    instance_destroy()
}