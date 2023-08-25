/// @description Insert description here
// You can write your code in this editor
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

    	if !place_meeting(x,y+vspd, obj_block) 
    	{
    		vspd +=0.1;	
    	}    
		
    #endregion


t++;
if t > 25 && t < 60
{
    image_speed = 1;
    hspd = 1*sign(image_xscale);
} else hspd = 0;


#region Takedmg

// Атака

    fnc_take_dmg_hitbox(-10,0,-1,10,0,-1);
    
// Топор

    fnc_take_dmg_axe(-10,0,-1,10,0,-1);
    
// Удар вниз   

    fnc_take_dmg_hitbox_down(0,-16,-1);

// Получение урона

    fnc_enemy_no_armor_dmg();
    
#endregion

#region Death
if enemy_hp < 1
{
    var d = instance_create_depth(x,y,depth,obj_zombie_death);
    d.sprite_index = sprite_index;
    d.image_index = image_index;
    d.image_xscale = image_xscale;
    instance_destroy();
}
#endregion