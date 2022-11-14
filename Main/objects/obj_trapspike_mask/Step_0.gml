/// @description Insert description here
// You can write your code in this editor
a++;
if a = 77
{
	instance_destroy();	
}
#region взаимодействие с бутсами
    
    if instance_exists(obj_abil_boots_hitbox) && instance_exists(obj_Player)
    {
        if place_meeting(x,y,obj_abil_boots_hitbox)
        {
            obj_Player.vspd = -7;
            instance_create_depth(obj_abil_boots_hitbox.x,obj_abil_boots_hitbox.y+8,obj_abil_boots_hitbox.depth-1,obj_sfx4);
            instance_destroy(obj_abil_boots_hitbox);  
        }
    }
    
    #endregion