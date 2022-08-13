/// @description Insert description here
// You can write your code in this editor
if moving = 1
{
    x+=spd;   
}
if teleport_delay_timer < 11 {teleport_delay_timer++;}

if pressed = 1
{
    if !place_meeting(x,y,obj_block)
    {
        obj_Player.isDead = 11;
        obj_Player.sprite_index = spr_player_masked_transform_to_cloud; 
        moving = 0;
    }
}

if image_index = 6
{
    image_index = 2;   
}
blob_cr_timer++;
if blob_cr_timer mod 10 = 0 {instance_create_depth(x,y,depth+1,obj_teleport_cloud_blob);}
if blob_cr_timer = 11 {blob_cr_timer=0;}

