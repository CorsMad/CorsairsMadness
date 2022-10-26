/// @description Insert description here
// You can write your code in this editor
#region живой
if isAlive = 1
{
    #region Патруль
    
        if state = 1 && state != 9 
        {
            if hspd != 0
            {   
                image_xscale = sign(hspd);
                image_speed = 0;
                sprite_index = spr_molded_flying_patrol;
            } else image_index = 2;
            image_speed = 0.5;
            x+=hspd;
            #region Влево
            if stl = 1 && stst = 0
            {
                hspd = -0.5;
                t++;
                if t = 110 
                {
                    t = 0;   
                    stst = 1;
                }
            }
            
            #endregion

            #region Вправо

            if str = 1 && stst = 0
            {
                hspd = 0.5;
                t++;
                if t = 110 
                {
                    t = 0;   
                    stst = 1;
                }
            }
            #endregion

            #region Стоп

            if stst = 1
            {
                hspd = 0;
                t++;
                if t = 110
                {
                    t = 0;
                    stst = 0;
                    if stl = 1
                    {
                        stl = 0;
                        str = 1;
                    }   else    {
                                    str = 0;
                                    stl = 1;
                                }

                }
            }

            #endregion
            
            #region встреча с игроком
            if instance_exists(obj_Player)
            {
                var dis = point_distance(x,y,obj_Player.x,obj_Player.y);
        	    if dis < 120 
        		{
                    image_index = 0;
        	        state = 2;
                    t = 0;
        	    }   
            }
            #endregion
        }
    #endregion

    #region Стоп
        if state = 2 && state != 9 
        {
            fnc_image_xscale_to_player(); 
            sprite_index = spr_molded_flying_wait;
            image_speed = 0;
            t++;
            if t = 10
            {
                image_index = 0;
                state = 3;
                t = 0;
            }
        }
    #endregion

    #region Подготовка к атаке
        if state = 3 && state != 9 
        {
            fnc_image_xscale_to_player(); 
            sprite_index = spr_molded_flying_prepare_to_attack;
            if (image_index > image_number - 1) 
            {
                image_speed = 0;
            } else image_speed = 1;
            t++;
            if t = 35
            {
                t = 0;
                state = 4;            
                spd = 0;
                image_index = 0;
            }
        }
    #endregion

    #region Полет в игрока
        if state = 4 && state != 9 
        {
            fnc_image_xscale_to_player(); 
        
        
            if instance_exists(obj_Player) 
            {
                var dir = point_direction(x,y,obj_Player.x,obj_Player.y-16);         
            }
            if !place_meeting(x,y,obj_item_hook_masked)
            {
                sprite_index = spr_molded_flying_attack;
                if (image_index > image_number - 1) 
                {
                    image_speed = 0;
                } else image_speed =1;
                hspeed = lengthdir_x(spd,dir);
                vspeed = lengthdir_y(spd,dir);
            } else  {
                        image_speed = 0;
                        hspeed = 0;
                        vspeed = 0;
                    }
            if spd < 4
            {
                spd += 0.05;
            }
        
            if place_meeting(x,y,obj_Player)
        
            {
                state = 5;
                spd = 0;
                image_index = 2;
            }
        }
    #endregion

    #region Подлет после столкновения с игроком
        if state = 5 && state != 9 
        {
        
            if !place_meeting(x,y,obj_item_hook_masked)
            {
                hspeed = lerp(hspeed,0,0.05);
                vspeed = lerp(vspeed,0,0.05);
        
                t++;
                if t = 70
                {
                    sprite_index = spr_molded_flying_attack;
                    image_speed = 0;
                    image_index = 2;
                    image_index = 0;
                    hspeed = 0;
                    vspeed = 0;
                    state = 6;
                    t = 0;
                }
            } else  {
                        hspeed = 0;
                        vspeed = 0;
                    }
        }
    #endregion

    #region Ожидание
        if state = 6 && state != 9 
        {
            sprite_index = spr_molded_flying_wait_after_attack;
            image_speed = 0.5;
            t++;
            if t = 30
            {
                sprite_index = spr_molded_flying_wait;
                t = 0;
                if y >= room_height/2
                {
                    state = 7; 
                } else state = 8;
            }
        
        }
    #endregion

    #region Полет вверх после атаки
        if state = 7 && state != 9 
        {
            fnc_image_xscale_to_player(); 
        
            if !place_meeting(x,y,obj_item_hook_masked)
            {
                sprite_index = spr_molded_flying_wait;
                y -=1;
            } else sprite_index = spr_molded_flying_take_dmg;
            t++;
            if t = 60
            {
                t = 0;
                state = 3;
            }
        }
    #endregion

    #region Полет вниз после атаки
        if state = 8 && state != 9 
        {
            fnc_image_xscale_to_player(); 
        
            if !place_meeting(x,y,obj_item_hook_masked)
            {
                sprite_index = spr_molded_flying_wait;
                y +=1;
            } else sprite_index = spr_molded_flying_take_dmg;
            t++;
            if t = 60
            {
                t = 0;
                state = 3;
            }
        }
    #endregion

    #region Получение урона и отлет назад
        if place_meeting(x,y,obj_hitbox_mask) && hit_cd = 0
        {
            if !place_meeting(x,y,obj_item_hook_masked)
            {
        		if obj_Player.isGrounded = 0 
        		{
        			obj_Player.vspd = -3.2;
        		}
                sprite_index = spr_molded_flying_take_dmg;    
                hit_cd = 1;
                enemy_hp -= 1;
                state = 9;
                combo_counter += 1;
                combo_timer = 1;
                
                if combo_counter >= 3
                {
                    if obj_Player.x >= x
                    {
                        hspd = -3;  
                    } else hspd = 3;
                    combo_counter = 0;
                }
                
                
                /*
                if combo_counter < 3
                {
                    if obj_Player.x >= x
                    {
                        hspd = -3;  
                    } else hspd = 3;
                } else  {
                            if obj_Player.x >= x
                            {
                                hspd = -5;  
                            } else hspd = 5;
                            combo_counter = 0;
                        }
                */     
                if obj_Player.x < x 
        		{
        			instance_create_depth(x-10,y-16,-1,obj_sfx_weapon_slash);
        		} else instance_create_depth(x+10,y-16,-1,obj_sfx_weapon_slash);
                vspd = -1.5;
                hspeed = 0;
                vspeed = 0;
            } else  {    
                        hspeed = 0;
                        vspeed = 0;
                    }
        
        }
    
        if place_meeting(x,y,obj_hitbox_mask_dash) && hit_cd = 0
    	{
            sprite_index = spr_molded_flying_take_dmg;
            hit_cd = 1;
            state = 9;
            enemy_hp -=1;
            /*
            if obj_Player.x >= x
            {
                hspd = -3;  
            } else hspd = 3;
            */
            vspd = -1.5;
            hspeed = 0;
            vspeed = 0;
    		obj_Player.image_index = 0;
            obj_Player.isRecoil = 1;
            obj_Player.dashing_timer_count = 1;
            
    		if obj_Player.x < x 
    		{
    			instance_create_depth(x-10,y-16,-1,obj_sfx_weapon_slash);
    		} else instance_create_depth(x+10,y-16,-1,obj_sfx_weapon_slash);
    	}
    
        if place_meeting(x,y,obj_hitbox_mask_hook) && hit_cd = 0
        {
            if !place_meeting(x,y,obj_item_hook_masked)
            {
        		if obj_Player.isGrounded = 0 
        		{
        			obj_Player.vspd = -3.2;
        		}
                sprite_index = spr_molded_flying_take_dmg;    
                hit_cd = 1;
                enemy_hp -= 1;
                state = 9;
                if obj_Player.x >= x
                {
                    hspd = -3;  
                } else hspd = 3;
                if obj_Player.x < x 
        		{
        			instance_create_depth(x-10,y-16,-1,obj_sfx_weapon_slash);
        		} else instance_create_depth(x+10,y-16,-1,obj_sfx_weapon_slash);
                vspd = -1.5;
                hspeed = 0;
                vspeed = 0;
            } else  {    
                        hspeed = 0;
                        vspeed = 0;
                    }
        
        }
    
                if place_meeting(x,y,obj_firing_molded_projectile_reverse) && hit_cd = 0
        {
            if !place_meeting(x,y,obj_item_hook_masked)
            {
                sprite_index = spr_molded_flying_take_dmg;    
                hit_cd = 1;
                enemy_hp -= 1;
                state = 9;
                var1 = instance_place(x,y,obj_firing_molded_projectile_reverse) 
                {
                    with var1 
                        {
                        instance_destroy();
                        }
                }
                
                combo_counter += 1;
                combo_timer = 1;
                
                
                if combo_counter >= 3
                {
                    if obj_Player.x >= x
                    {
                        hspd = -3;  
                    } else hspd = 3;
                    combo_counter = 0;
                }
                
                
                /*
                if combo_counter < 3
                {
                    if obj_Player.x >= x
                    {
                        hspd = -3;  
                    } else hspd = 3;
                } else  {
                            if obj_Player.x >= x
                            {
                                hspd = -5;  
                            } else hspd = 5;
                            combo_counter = 0;
                        }
                */     
                        
                if obj_Player.x < x 
        		{
        			instance_create_depth(x-10,y-16,-1,obj_sfx_weapon_slash);
        		} else instance_create_depth(x+10,y-16,-1,obj_sfx_weapon_slash);
                vspd = -1.5;
                hspeed = 0;
                vspeed = 0;
            } else  {    
                        hspeed = 0;
                        vspeed = 0;
                    }
        
        }
        

        if state = 9 
        {
    		t = 0;
        
            hspeed = 0;
            vspeed = 0;
            x+=hspd;
            y+=vspd;
        
            if hspd > 0
            {
                if hspd != 0 
                {
                    hspd -=0.1;   
                }
            }
            if hspd < 0
            {
                if hspd != 0
                {
                    hspd +=0.1;   
                }
            }
            if vspd < 0
            {
                vspd += 0.1;   
            }
            if vspd = 0 && hspd = 0
            {
                //hit_cd = 0;
    			t = 0;
                image_index = 0;
                state = 3;
            }
            
            
        }
        
        if hit_cd != 0
            {
                hit_cd ++;   
            }
           // if hit_cd = 15
            if hit_cd = 15
            {
                hit_cd = 0;   
            }
        
        
    #endregion
    
    #region Комбо таймер
    
    if combo_timer > 0 
    {
        combo_timer +=1;   
    }
    if combo_timer = 40 
    {
        combo_timer = 0;
        combo_counter = 0;
    }
    #endregion  
    
    if enemy_hp <= 0 
    {
        isAlive = 0;   
    }
}
#endregion

#region мертвый

if isAlive = 0
{
    var i = instance_create_depth(x,y,depth,obj_flying_molded_dead);
    i.image_xscale = image_xscale;
    instance_destroy();
    if instance_exists(obj_sp_f1_r14_trigger)
    {
        obj_sp_f1_r14_trigger.state = 4;       
    }
}

#endregion