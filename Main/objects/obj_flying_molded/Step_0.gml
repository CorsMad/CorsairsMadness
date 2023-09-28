/// @description Insert description here
// You can write your code in this editor

#region Анимации
if t_red!= 0
{
    image_blend = c_red;
    t_red -=0.1;   
}
if t_red = 0
{
    image_blend = c_white;
}
#endregion

#region живой
if isAlive = 1
{
    #region Пересечение с блок
    if place_meeting(x,y,obj_block)
    {
           isCrossing = 1;
    } else isCrossing = 0;
    #endregion
    
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
                
                // создангик хитбокса
                var hb = instance_create_depth(x,y,depth,obj_flying_molded_hitbox);
                hb.oleg = id;
                
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

    #region от обычного добивания
   
    if place_meeting(x,y,obj_hitbox_mask_finisher) && hit_cd = 0  && state != 11 // && getKicked = 0
    {
        vspd = -2;
        fnc_superattack_gain_specattack();
        hspd = sign(obj_Player.dir)*2;
        getKicked = 1;
        delay = 1;  
        hit_cd = 1;
        state = 10;
        t_red = 1;
        enemy_hp-=1;
        fnc_molded_green_blood_hit();
    }
    if place_meeting(x,y+1,obj_block) && delay = 0 && getKicked = 1
    {
        getKicked = 0;
        hspd = 0;
        vspd = 0;
        state = 7;
        fnc_molded_green_blood_hit();
    }
    #endregion

    #region от выпада 
    if place_meeting(x,y,obj_hitbox_mask_finisher_forward)  && hit_cd = 0 && state != 11//&& getKicked = 0
    {
        fnc_superattack_gain_specattack();
        t_red = 1;
        vspd = 2;
        hspd = sign(obj_Player.dir)*6;
        getKicked = 2;
        delay = 1;   
        enemy_hp-=1;
        hit_cd = 1;
        getBounced = 0;
        state = 10;
        t_red = 1;
        fnc_molded_green_blood_forward();
    }    
    
    #endregion

    #region от подброса

    if place_meeting(x,y,obj_hitbox_mask_finisher_up) && hit_cd = 0 && state != 11 // && getKicked = 0
    {
        fnc_superattack_gain_specattack();
        t_red = 1;
        vspd = -6;
        enemy_hp-=1;
        getKicked = 3;
        delay = 1;  
        getBounced = 1;
        hit_cd = 1;
        state = 10;
        t_red = 1;
        fnc_molded_green_blood_up();
        
    }

    if place_meeting(x,y+1,obj_block) && delay = 0 && getKicked = 3 && isCrossing = 0
    {
        if getBounced = 1 
        {
            getBounced = 0;
            vspd = -2;
            delay = 1;
        } else 
        {
            vspd = 0;
            getBounced = 0;
            getKicked = 0
            state = 11;
            
        }
    }

    #endregion

    #region от удара вниз

    if place_meeting(x,y,obj_hitbox_mask_finisher_down) && hit_cd = 0 && state != 11//&& getKicked = 0 
    {
        fnc_superattack_gain_specattack();
        t_red = 1;
        vspd = 6;
        hit_cd = 1;
        getKicked = 4;
        delay = 1;  
        getBounced = 1;
        enemy_hp-=1;
        state = 10; 
        t_red = 1;
        fnc_molded_green_blood_down();
    }
    if place_meeting(x,y+1,obj_block) && delay = 0 && getKicked = 4 && isCrossing = 0
    {
    
        if getBounced = 1 
        {
            getBounced = 0;
            vspd = -4;
            getKicked = 4;
            delay = 1;
        } else 
        {
            vspd = 0;
            getBounced = 0;
            getKicked = 0
            state = 11;
            
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
        			obj_Player.vspd = -1.8; //3.2
        		}
                sprite_index = spr_molded_flying_take_dmg;    
                hit_cd = 1;
                enemy_hp -= 1;
                state = 9;
                /*
                combo_counter += 1;
                combo_timer = 1;
                */
                fnc_superattack_gain_attack_dash();
                t_red = 1;
                vspd = 0;
                hspd = 0;
                delay = 0;
                flip = 0;
                getBounced = 0;
                getKicked = 0;
                if obj_Player.x < x 
        		{
        			instance_create_depth(x-10,y-16,-1,obj_sfx_weapon_slash);
        		} else instance_create_depth(x+10,y-16,-1,obj_sfx_weapon_slash);
                
                hspeed = 0;
                vspeed = 0;
            } else  {    
                        hspeed = 0;
                        vspeed = 0;
                        hspd = 0;
                        vspd = 0;
                    }
        
        }
    
        if place_meeting(x,y,obj_hitbox_mask_dash) //&& hit_cd = 0
    	{
            sprite_index = spr_molded_flying_take_dmg;
            hit_cd = 1;
            state = 9;
            enemy_hp -=1;
            t_red = 1;
            fnc_superattack_gain_attack_dash();
            vspd = -1.5;
            hspeed = 0;
            vspeed = 0;
            hspd = sign(obj_Player.dir)*4;
    		obj_Player.image_index = 0;
            obj_Player.isRecoil = 1;
            obj_Player.vspd = -2;
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
                fnc_superattack_gain_attack_dash();
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
                t_red = 1;
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
            if hit_cd = 10
            {
                hit_cd = 0;   
            }
        
        
    #endregion
    
    #region Получение урона от добиваний
    if delay > 0 
    {
        delay -=0.5;   
    }
    if flip > 0
    {
        flip -=0.05;   
    }
    if hits_cd!=0 hits_cd++;
    if hits_cd=10 hits_cd=0;
    #region Анимация
    if state = 10 
    {
        x+=hspd;
        y+=vspd;
        if hspd> 0
        {
            hspd -= 0.25;
        }
        if hspd < 0
        {
            hspd += 0.25;   
        }
        if vspd> 0
        {
            vspd -= 0.25;
        }
        if vspd < 0
        {
            vspd += 0.25;   
        }
        image_speed = 0;
        
        if vspd = 0 && hspd = 0
        {
            state = 3;
        }
    }
    if t_red!= 0
    {
        image_blend = c_red;
        t_red -=0.1;   
    }
    if t_red = 0
    {
        image_blend = c_white;
    }
    #endregion



    #region Поднимание

    if state = 11
    {
        image_speed = 0;
        t++;
        if t = 20
        {
            image_index = 1;   
        }
        if t = 30
        {
            state = 7;
            t = 0;
        }
    }

    #endregion

    #endregion
    
    #region Получение урона от суперов
    if (place_meeting(x,y,obj_hitbox_mask_superattack_h1) || place_meeting(x,y,obj_hitbox_mask_superattack_h2)
    || place_meeting(x,y,obj_hitbox_mask_superattack_aoe)) && hits_cd = 0{
        t_red = 1;
        vspd = 2;
        hspd = sign(obj_Player.dir)*6;
        getKicked = 2;
        delay = 1;   
        hit_cd = 1;
        hits_cd = 1;
        getBounced = 0;
        state = 10;
        t_red = 1;
        enemy_hp-=10;
        fnc_molded_green_blood_forward();
        fnc_molded_green_blood_forward();
        fnc_molded_green_blood_forward();
        fnc_molded_green_blood_up();
        fnc_molded_green_blood_up();
        fnc_molded_green_blood_up();
    }
    
    var supermissle = instance_place(x,y,obj_hitbox_mask_superattack_missle) 
    if supermissle!=noone{
           supermissle.state = 1;
           fnc_molded_green_blood_forward();
           fnc_molded_green_blood_up();
           enemy_hp-=5;
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
    fnc_molded_dark_essence_none();
    var i = instance_create_depth(x,y,depth,obj_flying_molded_dead);
    i.image_xscale = image_xscale;
    instance_destroy();
}

#endregion

