/// @description Insert description here
// You can write your code in this editor

if instance_exists(obj_Player)
{
    if place_meeting(x,y,obj_Player)
    {
        if obj_Player.clone_timer != 0 && obj_Player.isDead!= 131 && obj_Player.isDead!=132
        {
            obj_Player.clone_timer = 0;
            obj_Player.isDead = 132;
            obj_Player.sprite_index = spr_player_masked_clone_use;
            obj_Player.image_index = 4;      
        }
    }
}