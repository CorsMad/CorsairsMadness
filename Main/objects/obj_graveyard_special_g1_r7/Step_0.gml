/// @description Insert description here
// You can write your code in this editor

if place_meeting(x,y,obj_Player)
{
    for (var i = 0; i < 3; i+=1;) {
        instance_create_depth(336,48+i*16,200,obj_block_shadow);        
    }   
    for (var k = 0; k < 3; k+=1;) {
        instance_create_depth(352,48+k*16,200,obj_block_shadow);        
    }   
    for (var l = 0; l < 3; l+=1;) {
        instance_create_depth(336,192+l*16,200,obj_block_shadow);        
    }   
    for (var m = 0; m < 3; m+=1;) {
        instance_create_depth(352,192+m*16,200,obj_block_shadow);        
    }  
    instance_create_depth(0,0,0,obj_graveyard_fight_controller_g1_r7);
    instance_destroy()
}