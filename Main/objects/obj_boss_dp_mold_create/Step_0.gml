/// @description Insert description here
// You can write your code in this editor
if instance_exists(fol)
{
    if fol.sprite_index != spr_boss_dp_appear
    {
        t++
        if t >= 5 
        {
            t = 0;
            instance_create_depth(fol.x+random_range(-8,8),fol.y+random_range(8,10),fol.depth+1,obj_boss_dp_mold)  ; 
        }
    }
}





