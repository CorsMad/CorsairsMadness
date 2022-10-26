/// @description Insert description here
// You can write your code in this editor

y+=vspd;
if vspd < 6 vspd+=0.2;

if y > 350 instance_destroy();

if isSolid = 1 && depth < 0
{
    if place_meeting(x,y,obj_cutscene_t1_block) 
    {
        instance_destroy();   
        instance_create_depth(x,y,depth-1,obj_sfx_dust_expl_big);
    }
}