/// @description Insert description here
// You can write your code in this editor

if fol.sprite_index = spr_bossj2_idle_on_place || fol.sprite_index = spr_bossj2_prepare_to_attack_on_place || fol.sprite_index = spr_bossj2_attack_on_place
{
    sprite_index = spr_bossj2_wings_on_place;   
} else
{
    if fol.sprite_index = spr_bossj2_turn_right
    {
        if fol.image_index < 6 && fol.image_index > 1
        {
            sprite_index = spr_bossj2_wings_on_place;   
        } else sprite_index = spr_bossj2_wings; 
    }
}
