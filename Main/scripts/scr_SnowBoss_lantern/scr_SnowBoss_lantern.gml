function scr_snowboss_lantern_create(argument0,argument1){
    instance_create_depth(argument0,argument1+16,-1,obj_sfx_dust_expl_big);
    instance_create_depth(argument0,argument1,1,obj_lantern_green);
    
}

function scr_snowboss_lantern_destroy(){
    if instance_exists(obj_lantern_green){
        instance_create_depth(obj_lantern_green.x,obj_lantern_green.y+16,-1,obj_sfx_dust_expl_big);
        instance_destroy(obj_lantern_green);
    }        
}