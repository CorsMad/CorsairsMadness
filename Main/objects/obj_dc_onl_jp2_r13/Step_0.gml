/// @description Insert description here
// You can write your code in this editor
if instance_exists(obj_Player) && isOn = 0
{
    if obj_Player.isDead = 1
    {
        global.dc_onl_jp2_r13 += 1;   
        isOn = 1;
    
        if global.dc_onl_jp2_r13 >= 1
        {
            instance_create_depth(obj_Player.x,obj_Player.y-64,obj_Player.depth-1,obj_tp_1pr_blue);   
        }
    }
}