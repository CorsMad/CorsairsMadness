
#region Перемещение
    #region коллиз
        
    	if place_meeting(x+hspd, y, obj_block)
    	{
        	while (!place_meeting(x+sign(hspd), y, obj_block )) 
        	{
        		x+= sign(hspd);
        	}
            hspd = 0;   
    	}
    	x += hspd;

    	if place_meeting(x, y+vspd, obj_block) 
    	{
    	    while (!place_meeting(x,y+sign(vspd), obj_block )) 
    		{
    	        y+= sign(vspd);
    	    }
    	    vspd = 0;
    	}
    	y += vspd;

    	if !place_meeting(x,y+vspd, obj_block) && flip = 0
    	{
    		vspd +=0.2;	
    	}    
        
    #endregion
        
    dir = image_xscale;
#endregion

#region Патрулирование
if state = 1
{
    if !place_meeting(x,y,obj_item_hook_masked)
    {
        if hspd > 0 
        {
            image_xscale = 1;   
        } 
        if hspd < 0 
        {
            image_xscale = -1;   
        }
    
        t++;
    
        if hspd > 0 
        {
            mov = 1   
        }
    
        if hspd < 0 
        {
            mov = -1;   
        }
    
        if t = 100
        {
            hspd = 0;
        }
    
        if t = 160
        {
            t = 0;
            if mov = 1
            {
                hspd = -0.5;
            } else hspd = 0.5;
        }
        if place_meeting(x+hspd,y,obj_block) || place_meeting(x-hspd,y,obj_block)
        {
            hspd = -hspd;
        }
    
        if instance_exists(obj_Player)
                {
                    var dis = point_distance(x,y,obj_Player.x,obj_Player.y);
            	    if dis < 160 
            		{
            	        state = 2;
                        t = 0;
                        hspd = 0;
            	    }   
                }
    }   else    {
                    hspd = 0;
                    vspd = 0;
                }
    image_speed = 0.5;
    if hspd != 0
    {
        sprite_index = spr_molded_grounded_walk;   
    } else sprite_index = spr_molded_grounded_idle;
}
#endregion

#region Остановка при обнаружении
if state = 2
{
    if !place_meeting(x,y,obj_item_hook_masked)
    {
        t++;
        if t = 30
        {
            t = 0;
            if abs(obj_Player.x - x) < 64 
            {
                if (image_xscale = -1 && place_meeting(x-8,y,obj_block)) || (image_xscale = 1 && place_meeting(x+8,y,obj_block)  )
                {
                    state = 6;  
                } else state = choose(4,5);
            }   else state = 3;
        }
    }   else    {
                    hspd = 0;
                    vspd = 0;
                }
    if obj_Player.x > x
    {
        image_xscale = 1;   
    } else image_xscale = -1;
    sprite_index = spr_molded_grounded_idle;
    image_index = 0;
    image_speed = 0;
}
#endregion

#region Преследование игрока
if state = 3
{
    if !place_meeting(x,y,obj_item_hook_masked)
    {
        if hspd > 0 
        {
            image_xscale = 1;   
        } 
        if hspd < 0 
        {
            image_xscale = -1;   
        }
    
        if (place_meeting(x+5,y,obj_block) && dir = 1) || (place_meeting(x-5,y,obj_block) && dir = -1 )
        {
            state = 31; 
        } 
        
        if obj_Player.x > x
        {
            hspd = 3;   
        } else hspd = -3;
            
        
        if abs(obj_Player.x - x) < 48 
        {
            hspd = 0;
            if (image_xscale = -1 && place_meeting(x-8,y,obj_block)) || (image_xscale = 1 && place_meeting(x+8,y,obj_block)  )
            {
                state = 6;  
            } else state = choose(4,5);
        
        }
    }   else    {
                    hspd = 0;
                    vspd = 0;
                }
    if hspd!= 0
    {
        sprite_index = spr_molded_grounded_run;   
        image_speed = 1;
    }   
}


//Остановка преследования
if state  = 31
{
    if !place_meeting(x,y,obj_item_hook_masked)
    {
        hspd = 0; 
        if abs(obj_Player.x - x) < 64 
        {
            hspd = 0;
            if (image_xscale = -1 && place_meeting(x-8,y,obj_block)) || (image_xscale = 1 && place_meeting(x+8,y,obj_block)  )
            {
                state = 6;  
            } else state = choose(4,5);
        
        }
    }   else    {
                    hspd = 0;
                    vspd = 0;
                }
    sprite_index = spr_molded_grounded_idle;
    image_speed = 0.5;
}
#endregion

#region 2 Удара

if state = 4
{
    if !place_meeting(x,y,obj_item_hook_masked)
    {
        t++;
        sprite_index = spr_molded_grounded_2strike
        image_speed = 0;
        switch(t)
        {
            case 1: image_index = 0;break;   
            case 5: image_index = 1;break;
            case 10:image_index = 2;break;
            case 25:image_index = 3;break;
            case 30:image_index = 4;
                    var d1 = instance_create_depth(x,y,depth,obj_grounded_molded_hitbox_twstr);
                    d1.image_xscale = sign(image_xscale);
                    break;
            case 35:image_index = 5;break;
            case 40:image_index = 6;break;
            case 45:image_index = 7;break;
            case 60:image_index = 8;
                    var d2 = instance_create_depth(x,y,depth,obj_grounded_molded_hitbox_twstr);
                    d2.image_xscale = sign(image_xscale);
                    break;
            case 65:image_index = 9;break;
            case 70:image_index = 10;break;
        }
        
        if t = 75
        {
            hspd = 0;
            t = 0;  
            state = 7;
        }
    }   else    {
                    hspd = 0;
                    vspd = 0;
                }
}
#endregion

#region Удар с выпадом

if state = 5
{
    sprite_index = spr_molded_grounded_strike_forward;
    image_speed = 0;
    if !place_meeting(x,y,obj_item_hook_masked)
    {
        t++;
        switch(t)
        {
            case 1: image_index = 0;break;
            case 5: image_index = 1;break;
            case 10:image_index = 2;break;
            case 30:image_index = 3;
                    var d3 = instance_create_depth(x,y,depth,obj_grounded_molded_hitbox_round);
                    d3.image_xscale = sign(image_xscale);
                    d3.hspd = 4*dir;
                    break;
            case 35:image_index = 4;break;
            case 40:image_index = 5;break;
            case 45:image_index = 6;break;
        }
        
        if t = 30
        {
            hspd = 4*dir;   
        }
        if t = 45
        {
            hspd = 0;   
        }
        if t = 50 
        {
            hspd = 0;
            t = 0;
            state = 7;
        }
    }   else    {
                    hspd = 0;
                    vspd = 0;
                }
}

#endregion

#region Отскок прыжке

if state = 6
{
    if !place_meeting(x,y,obj_item_hook_masked)
    {
        t++;
        if t = 1
        {
            if dir = 1
            {
                vspd = -4;
                hspd = -2;
            }
            if dir = -1 
            {
                vspd = -4;
                hspd = 2;
            }
        }
        if t > 1 && place_meeting(x,y+1,obj_block)
        {
            t = 0;
            hspd = 0;
            state = choose(4,5);   
        }
    }   else    {
                    hspd = 0;
                    vspd = 0;
                }
    sprite_index = spr_molded_grounded_outjump;
}

#endregion

#region Ожидание после удара
if state = 7
{
    if !place_meeting(x,y,obj_item_hook_masked)
    {
        if obj_Player.x >=x 
        {
            image_xscale = 1;
        } else image_xscale = -1;
        t++;
        if t = 20
        {
            t = 0;
            if abs(obj_Player.x - x) < 64 
            {
                if (image_xscale = -1 && place_meeting(x-8,y,obj_block)) || (image_xscale = 1 && place_meeting(x+8,y,obj_block)  )
                {
                    state = 6;  
                } else state = choose(4,5);
            }   else state = 3;  
        }
    }   else    {
                    hspd = 0;
                    vspd = 0;
                }
    sprite_index = spr_molded_grounded_idle;
    image_speed = 0.5;
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

#region Анимация
if state = 10 
{
    switch(sprite_index)
    {
        case spr_molded_grounded_damageforward: if hspd > 0 {image_index = 1} else image_index = 0;break;
        case spr_molded_grounded_damageupdown: if vspd > 0 {image_index = 1} else image_index = 0;break;  
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

#region от обычного добивания
if place_meeting(x,y,obj_hitbox_mask_finisher)  && hit_cd = 0  && state != 11//&& getKicked = 0
{
    if !place_meeting(x,y,obj_item_hook_masked)
    {
        vspd = -2;
        hspd = sign(obj_Player.dir)*1;
        getKicked = 1;
        delay = 1;  
        hit_cd = 1;
        state = 10;
        t_red = 1;
        fnc_molded_green_blood_hit();   
    } else 
    {
        vspd = 0;
        hspd = 0;
        getKicked = 0;
    }
    
}
if place_meeting(x,y+1,obj_block) && delay = 0 && getKicked = 1
    {
        getKicked = 0;
        hspd = 0;
        vspd = 0;
        state = 7;
        
    }
#endregion

#region от выпада 
if place_meeting(x,y,obj_hitbox_mask_finisher_forward)  && hit_cd = 0 && state != 11//&& getKicked = 0
{
    t_red = 1;
    vspd = -3;
    fnc_molded_green_blood_forward();
    hspd = sign(obj_Player.dir)*4;
    getKicked = 2;
    delay = 1;   
    hit_cd = 1;
    getBounced = 0;
    state = 10;
    sprite_index = spr_molded_grounded_damageforward;
}
if place_meeting(x-1,y,obj_block)  && getBounced = 0 && getKicked = 2
{
    vspd = -2;
    hspd = 1;
    getBounced = 1;
}
if place_meeting(x+1,y,obj_block)  && getBounced = 0 && getKicked = 2
{
    vspd = -2;
    hspd = -1;
    getBounced = 1;
}

if place_meeting(x,y+1,obj_block) && delay = 0 && getKicked = 2
    {
        getKicked = 0;
        hspd = 0;
        vspd = 0;
        getBounced = 0;
        state = 11;
        sprite_index = spr_molded_grounded_wakeup;
        image_index = 0;
    }
#endregion

#region от подброса

if place_meeting(x,y,obj_hitbox_mask_finisher_up) && hit_cd = 0 && state != 11// && getKicked = 0
{
    if !place_meeting(x,y,obj_item_hook_masked)
    {
        t_red = 1;
        vspd = -6;
        getKicked = 3;
        delay = 1;  
        getBounced = 1;
        hit_cd = 1;
        state = 10;
        fnc_molded_green_blood_up();
        sprite_index = spr_molded_grounded_damageupdown;
    }   else 
    {
        vspd = 0;
        hspd = 0;
        getKicked = 0;
    }
}

if place_meeting(x,y+1,obj_block) && delay = 0 && getKicked = 3
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
        sprite_index = spr_molded_grounded_wakeup;
        image_index = 0;
    }
}

#endregion

#region от удара вниз

if place_meeting(x,y,obj_hitbox_mask_finisher_down) && hit_cd = 0 && state != 11//&& getKicked = 0 
{
    t_red = 1;
    vspd = 6;
    hit_cd = 1;
    getKicked = 4;
    delay = 1;  
    getBounced = 1;
    state = 10; 
    fnc_molded_green_blood_down();
    sprite_index = spr_molded_grounded_damageupdown;
}
if place_meeting(x,y+1,obj_block) && delay = 0 && getKicked = 4
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
        sprite_index = spr_molded_grounded_wakeup;
        image_index = 0;
    }
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

#region Получение урона 

if place_meeting(x,y,obj_hitbox_mask) && hit_cd = 0 && state != 11
{
    if !place_meeting(x,y,obj_item_hook_masked)
    {
        if obj_Player.isGrounded = 0 
        {
            obj_Player.vspd = -1.8;
        }   
        t =0;
        hit_timer = 1;
        hit_cd = 1;
        t_red =1;
        enemy_hp -= 1;
        //fnc_molded_green_blood_hit();
        if state != 10
        {
            state = 9;
        }
        //combo_counter += 1;
        //combo_timer = 1;
        hspd = 0;
        if state = 10
        {
            flip = 1;
            vspd = 0;
        } 
       // vspd = 0;
        if obj_Player.x < x 
        		{
        			instance_create_depth(x-10,y-16,-1,obj_sfx_weapon_slash);
        		} else instance_create_depth(x+10,y-16,-1,obj_sfx_weapon_slash);
    }   
}

if place_meeting(x,y,obj_hitbox_mask_dash) // && hit_cd = 0
{
     
    t =0;
    hit_timer = 1;
    enemy_hp -= 1;
    t_red = 1;
    if obj_Player.x < x 
        		{
        			instance_create_depth(x-10,y-16,-1,obj_sfx_weapon_slash);
        		} else instance_create_depth(x+10,y-16,-1,obj_sfx_weapon_slash);
    obj_Player.image_index = 0;
    obj_Player.isRecoil = 1;
    obj_Player.dashing_timer_count = 1;
    fnc_molded_green_blood_forward()
    vspd = -3;
    hspd = sign(obj_Player.dir)*4;
    getKicked = 2;
    delay = 1;   
    hit_cd = 1;
    getBounced = 0;
    state = 10;
    sprite_index = spr_molded_grounded_damageforward;
}

if place_meeting(x,y,obj_hitbox_mask_hook)  && hit_cd = 0
{
    if !place_meeting(x,y,obj_item_hook_masked)
    {
        if obj_Player.isGrounded = 0 
        {
            obj_Player.vspd = -3.2;
        }   
        fnc_molded_green_blood_forward();
        t =0;
        hit_timer = 1;
        hit_cd = 1;
        enemy_hp -= 1;
        state = 10;//9
        //hspd = sign(obj_Player.dir)*2;
        vspd = -2;
        t_red = 1;
        getKicked = 2;
        getBounced = 0;
        delay = 1;
        sprite_index = spr_molded_grounded_damageforward;
        fnc_molded_green_blood_hit()
        if obj_Player.x < x 
        		{
        			instance_create_depth(x-10,y-16,-1,obj_sfx_weapon_slash);
        		} else instance_create_depth(x+10,y-16,-1,obj_sfx_weapon_slash);
                
        if obj_Player.x < x
        {
            hspd = 4;   
        } else hspd = -4;
        
    }   else 
            {
                hspd = 0;
                vspd = 0;
            }
}

if place_meeting(x,y,obj_firing_molded_projectile_reverse)  && hit_cd = 0
{
    if !place_meeting(x,y,obj_item_hook_masked)
    { 
        t_red = 1;
        t =0;
        hit_timer = 1;
        hit_cd = 1;
        enemy_hp -= 1;
        state = 9;
        combo_counter += 1;
        combo_timer = 1;
        hspd = 0;
        vspd = 0;
        var1 = instance_place(x,y,obj_firing_molded_projectile_reverse) 
        {
            with var1 
            {
                instance_destroy();
            }
        }
        
        if obj_Player.x < x 
        		{
        			instance_create_depth(x-10,y-16,-1,obj_sfx_weapon_slash);
        		} else instance_create_depth(x+10,y-16,-1,obj_sfx_weapon_slash);
        if combo_counter > 2 
        {
            combo_counter = 0;
            if obj_Player.x < x
            {
                hspd = 10;   
            } else hspd = -10;
        }
    }   else 
            {
                hspd = 0;
                vspd = 0;
            }
}






if state = 9 
{
    if !place_meeting(x,y,obj_item_hook_masked)
    {
        sprite_index = spr_molded_grounded_takedmg;
        hit_timer += 1;
        if hit_timer = 20
        {
            hspd = 0;
            
            state = 7;
            //state = choose(4,5);
            
            t = 15;
               
        }
        if hspd !=0
        {
            hspd = lerp(hspd,0,0.1);
        }
    }   else 
            {
                hspd = 0;
                vspd = 0;
            }
}


#endregion

#region HitCD
    if hit_cd != 0
    {
        hit_cd ++;   
    }
    if hit_cd = 10
    {
        hit_cd = 0;   
    }
    
#endregion

#region blob
if  state != 11
{
    bl_t++;
    if bl_t = 20
    {
        instance_create_depth(x,y-8,depth+1,obj_grounded_molded_blob);
        bl_t = 0;
    }
}

#endregion

if enemy_hp <= 0 
{
    fnc_molded_dark_essence_none();
    var m = instance_create_depth(x,y,depth,obj_grounded_molded_dead);
    m.image_xscale = image_xscale;
    instance_destroy();       
}


#region TEST

if place_meeting(x,y,obj_item_hook_masked) && sprite_index!= spr_molded_grounded_wakeup
{
    hspd = 0;
    vspd = 0;
}

#endregion