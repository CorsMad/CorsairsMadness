/// @description Insert description here
// You can write your code in this editor


switch(state){
    case 0:
        t++;  
        t_expl++;
        if t_expl mod 15 = 0 instance_create_depth(x+random_range(-12,12),y+random_range(-12,12),depth-1,obj_sfx_explosion,{image_alpha : random_range(0.5,0.7)});
        if t > 100{
            if point_distance(x, y, room_width/2, room_height/2) > 3
            {
                move_towards_point(room_width/2, room_height/2, 3);
            } else speed = 0;
        }
        
        if t >= 200 && speed = 0 {
            obj_cutscene_deathisland_ending_rectangle.state = 1;
            state = 0.5;
            t=0;
            t_expl = 0;
        }
        break;
    case 0.5:
        t_expl++;
        if t_expl >= 15 {
            instance_create_depth(x+random_range(-12,12),y+random_range(-12,12),depth-1,obj_sfx_explosion,{image_alpha : random_range(0.5,0.7)});
            t_expl = 0;
        }
        break;
    
    case 1:
        t++;
        t_expl++;
        if t_expl >= 25 {
            instance_create_depth(x+random_range(-12,12),y+random_range(-12,12),depth-1,obj_sfx_explosion,{image_alpha : random_range(0.5,0.7)});
            t_expl = 0;
        }
        if t = 50 {
            instance_create_depth(0,0,depth-999999999999,obj_cutscene_deathisland_ending_txt) 
            state = 1.5;
            t = 0;
        }
        break;
    case 1.5:
        t_expl++;
        if t_expl >= 35 {
            instance_create_depth(x+random_range(-12,12),y+random_range(-12,12),depth-1,obj_sfx_explosion,{image_alpha : random_range(0.5,0.7)});
            t_expl = 0;
        }
        break;
    case 2:
        t++;
        
        t_expl++;
        if t_expl >= 10 {
            instance_create_depth(x+random_range(-12,12),y+random_range(-12,12),depth-1,obj_sfx_explosion,{image_alpha : random_range(0.5,0.7)});
            t_expl = 0;
        }
        switch(t){
             case 50: image_index = 1;break;  
             case 100: image_index = 2;break;  
             case 150: image_index = 3;break;  
             case 200: image_index = 4;break;  
             case 250: image_index = 5;break;  
             case 395:
                instance_create_depth(x-16,y-16,depth-1,obj_sfx_explosion);
                instance_create_depth(x+16,y-16,depth-1,obj_sfx_explosion);
                instance_create_depth(x-16,y+16,depth-1,obj_sfx_explosion);
                instance_create_depth(x+16,y+16,depth-1,obj_sfx_explosion);
                instance_create_depth(x,y,depth-2,obj_sfx_explosion);
                break;
             case 400: 
                obj_cutscene_deathisland_ending_player.state = 1;
                instance_destroy();
                break;  
        }
            #region Графика
            	t_shadow++;
            	if t_shadow = 5 {                    
            		var s = instance_create_depth(x+random_range(-16,16),y+random_range(-2,8),depth+choose(-1,1),obj_deathisland_souls);	
            		s.image_xscale = choose(-s_scale,s_scale);
            		s.image_yscale = -s_scale;
            		s.image_alpha = random_range(0.7,1);
            		s_scale = choose(1,1.1,1.2,1.3,1.4,1.5);
            		t_shadow=0;
            	}
            #endregion
        break;
    case 3:
        break;
}
t_anim ++ ;
if t_anim mod 10 = 0{
    #region up
    var gbu1 = instance_create_depth(x,y-16,depth+0.1,obj_molded_dark_blood);
    var gbu2 = instance_create_depth(x,y-8,depth+0.1,obj_molded_dark_blood);
    var gbu3 = instance_create_depth(x,y-16,depth+0.1,obj_molded_dark_blood);
            
    gbu1.hspd = random_range(-1,1)
    gbu1.vspd = random_range(-3,-1);
    gbu1.grav = choose(0.11,0.12);
            
    gbu2.hspd = random_range(-1,1)
    gbu2.vspd = random_range(-3,-1);
    gbu2.grav = choose(0.11,0.12);
            
    gbu3.hspd = random_range(-1,1)
    gbu3.vspd = random_range(-3,-1);
    gbu3.grav = choose(0.11,0.12);       

    #endregion
    t_anim = 0;
}










