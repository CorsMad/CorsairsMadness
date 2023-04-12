/// @description Insert description here
// You can write your code in this editor
if place_meeting(x,y,obj_hitbox_mask) && hit_cd = 0
{
    hit_cd = 1;
    hp -=1;
    image_index +=1;
    im_cd = 1;
    if obj_Player.isGrounded = 0 
    {
        obj_Player.vspd = -1.8;
    }
    instance_create_depth(obj_hitbox_mask.x+30*sign(obj_hitbox_mask.image_xscale),obj_hitbox_mask.y-20,depth-1,obj_sfx_weapon_slash);
    instance_create_depth(x+8,y+8,depth-1,obj_sfx_dust_expl_small);
    instance_create_depth(x+24,y+8,depth-1,obj_sfx_dust_expl_small);
    instance_create_depth(x+8,y+32,depth-1,obj_sfx_dust_expl_small);
    instance_create_depth(x+24,y+32,depth-1,obj_sfx_dust_expl_small);
    instance_create_depth(x+8,y+56,depth-1,obj_sfx_dust_expl_small);
    instance_create_depth(x+24,y+56,depth-1,obj_sfx_dust_expl_small);
    
}

if place_meeting(x,y,obj_hitbox_mask_dash)
{
    instance_create_depth(obj_hitbox_mask_dash.x+30*sign(obj_hitbox_mask_dash.image_xscale),obj_hitbox_mask_dash.y-20,depth-1,obj_sfx_weapon_slash);
    obj_Player.image_index = 0;
    
    
    obj_Player.isDashing = 0;
    obj_Player.vspd = -1;
    obj_Player.isRecoil = 1;
    obj_Player.dashing_timer_count = 1;
    image_index +=1;
    hit_cd = 1;
    hp -=1;
    im_cd = 1;
    instance_create_depth(x+8,y+8,depth-1,obj_sfx_dust_expl_small);
    instance_create_depth(x+24,y+8,depth-1,obj_sfx_dust_expl_small);
    instance_create_depth(x+8,y+32,depth-1,obj_sfx_dust_expl_small);
    instance_create_depth(x+24,y+32,depth-1,obj_sfx_dust_expl_small);
    instance_create_depth(x+8,y+56,depth-1,obj_sfx_dust_expl_small);
    instance_create_depth(x+24,y+56,depth-1,obj_sfx_dust_expl_small);
}

if place_meeting(x,y,obj_firing_molded_projectile_reverse) && hit_cd = 0
{
    hit_cd = 1;
    hp -=1;
    image_index +=1;
    im_cd = 1;
    var1 = instance_place(x,y,obj_firing_molded_projectile_reverse) 
    {   
        with var1 
            {
                instance_create_depth(x,y,depth,obj_sfx_weapon_slash);
                instance_destroy();
            }
    }    
    instance_create_depth(x+8,y+8,depth-1,obj_sfx_dust_expl_small);
    instance_create_depth(x+24,y+8,depth-1,obj_sfx_dust_expl_small);
    instance_create_depth(x+8,y+32,depth-1,obj_sfx_dust_expl_small);
    instance_create_depth(x+24,y+32,depth-1,obj_sfx_dust_expl_small);
    instance_create_depth(x+8,y+56,depth-1,obj_sfx_dust_expl_small);
    instance_create_depth(x+24,y+56,depth-1,obj_sfx_dust_expl_small);
    
}



if im_cd !=0 
{
    im_cd +=1;   
}
if im_cd = 4
{
    im_cd = 0;
    image_index+=1;
}
if !instance_exists(obj_hitbox_mask) && !instance_exists(obj_hitbox_mask_dash)
{
    hit_cd = 0;   
}

if hp <= 0 
{
    instance_create_depth(x+16,y+42,depth-1,obj_sfx_dust_expl_big);
    instance_create_depth(x+16,y,depth-1,obj_sfx_dust_expl_big);
    instance_destroy();   
}