/// @description Insert description here
// You can write your code in this editor

if instance_exists(obj_Player){
    if place_meeting(x,y,obj_hitbox){
        fnc_snd_play_onetime(snd_vase_destruct);
        instance_create_depth(x,y-24,depth-1,obj_sfx2)
        instance_create_depth(x,y-24,depth-2,obj_sfx3)
        
        var b = instance_create_depth(x,y,depth,obj_snow_snowman_body)
        if obj_Player.x < x b.hspd = 3 else b.hspd = -3
        
        var hl = instance_create_depth(x-16,y-20,depth,obj_snow_snowman_hand);
        hl.hspd = -1; 
        var hr = instance_create_depth(x+16,y-20,depth,obj_snow_snowman_hand);
        hr.hspd = 1;
        
        var h = instance_create_depth(x,y-32,depth,obj_snow_snowman_head);
        if obj_Player.x < x h.hspd = 0.5; else h.hspd = -0.5;
    
        var c = instance_create_depth(x,y-38,depth,obj_snow_snowman_casc);
        if obj_Player.x < x c.hspd = 1.5; else c.hspd = -1.5;
    
        if give = 1{
            if chanse < 10 {
                var mon = instance_create_depth(x,y-5,depth-1,choose(obj_money1,obj_money10));
                mon.hspd = 0;
            }
        }
        
        instance_destroy()   ;
    }
}







