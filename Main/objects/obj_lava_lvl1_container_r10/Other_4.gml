/// @description Insert description here
// You can write your code in this editor
instance_create_depth(x,y,0,obj_room_transition_black_screen);


if global.chest_l1_r10 = 1
{
    instance_create_depth(480,144,0,obj_chest_l1_r10);
}

if instance_exists(obj_Player)
{
    if obj_Player.x < room_width/2
    {
        var i1 = instance_create_depth(776,136,0,obj_destrutable_chain_block_simple);
        var i2 = instance_create_depth(776,152,0,obj_destrutable_chain_block_simple);
        var i3 = instance_create_depth(776,168,0,obj_destrutable_chain_block_simple);
        var i4 = instance_create_depth(776,184,0,obj_destrutable_chain_block_simple);

        
        i1.sprite_index = spr_destructable_tile_vulcano;
        i1.image_index = 3;
        i2.sprite_index = spr_destructable_tile_vulcano;
        i2.image_index = 18;
        i3.sprite_index = spr_destructable_tile_vulcano;
        i3.image_index = 3;
        i4.sprite_index = spr_destructable_tile_vulcano;
        i4.image_index = 18;

        
        var k1 = instance_create_depth(792,136,0,obj_destrutable_chain_block_simple);
        var k2 = instance_create_depth(792,152,0,obj_destrutable_chain_block_simple);
        var k3 = instance_create_depth(792,168,0,obj_destrutable_chain_block_simple);
        var k4 = instance_create_depth(792,184,0,obj_destrutable_chain_block_simple);
        
        k1.sprite_index = spr_destructable_tile_vulcano;
        k1.image_index = 4;
        k2.sprite_index = spr_destructable_tile_vulcano;
        k2.image_index = 4;
        k3.sprite_index = spr_destructable_tile_vulcano;
        k3.image_index = 4;
        k4.sprite_index = spr_destructable_tile_vulcano;
        k4.image_index = 4;
        
        var l1 = instance_create_depth(808,136,0,obj_destrutable_chain_block_simple);
        var l2 = instance_create_depth(808,152,0,obj_destrutable_chain_block_simple);
        var l3 = instance_create_depth(808,168,0,obj_destrutable_chain_block_simple);
        var l4 = instance_create_depth(808,184,0,obj_destrutable_chain_block_simple);
        
        l1.sprite_index = spr_destructable_tile_vulcano;
        l1.image_index = 4;
        l2.sprite_index = spr_destructable_tile_vulcano;
        l2.image_index = 4;
        l3.sprite_index = spr_destructable_tile_vulcano;
        l3.image_index = 4;
        l4.sprite_index = spr_destructable_tile_vulcano;
        l4.image_index = 4;
        
        var m1 = instance_create_depth(824,136,0,obj_destrutable_chain_block_simple);
        var m2 = instance_create_depth(824,152,0,obj_destrutable_chain_block_simple);
        var m3 = instance_create_depth(824,168,0,obj_destrutable_chain_block_simple);
        var m4 = instance_create_depth(824,184,0,obj_destrutable_chain_block_simple);
        
        m1.sprite_index = spr_destructable_tile_vulcano;
        m1.image_index = 4;
        m2.sprite_index = spr_destructable_tile_vulcano;
        m2.image_index = 4;
        m3.sprite_index = spr_destructable_tile_vulcano;
        m3.image_index = 4;
        m4.sprite_index = spr_destructable_tile_vulcano;
        m4.image_index = 4;
        
        var n1 = instance_create_depth(840,136,0,obj_destrutable_chain_block_simple);
        var n2 = instance_create_depth(840,152,0,obj_destrutable_chain_block_simple);
        var n3 = instance_create_depth(840,168,0,obj_destrutable_chain_block_simple);
        var n4 = instance_create_depth(840,184,0,obj_destrutable_chain_block_simple);
        
        n1.sprite_index = spr_destructable_tile_vulcano;
        n1.image_index = 4;
        n2.sprite_index = spr_destructable_tile_vulcano;
        n2.image_index = 4;
        n3.sprite_index = spr_destructable_tile_vulcano;
        n3.image_index = 4;
        n4.sprite_index = spr_destructable_tile_vulcano;
        n4.image_index = 4;
    }
    
}
