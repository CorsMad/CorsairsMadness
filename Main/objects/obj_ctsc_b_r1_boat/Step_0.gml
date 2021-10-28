/// @description Insert description here
// You can write your code in this editor
x+= hspd;
y+= vspd;

if state = 0
{
    hspd -= 0.1;
    if hspd <=0
    {
        hspd = 0;
        if instance_exists(obj_Player)
        {
            obj_Player.isDead = 2;
            obj_Player.x = 58;
            obj_Player.y = 256;
            obj_Player.key_right = 1;
            obj_Player.key_jump_pressed = 1;
            obj_Player.vspd = -6;
            image_index = 0;
            state = 1;
        }  
    }
}

if state = 1
{
    with(obj_Player)
        {
            if place_meeting(x,y+1,obj_block)
            {
                isDead = 0;
                var bl = instance_create_depth(96,0,0,obj_block);
                bl.image_yscale = 20;
                instance_create_depth(0,0,0,obj_music_controller_jungle) 
                obj_ctsc_b_r1_boat.state = 2;
                
            }
        }   
}