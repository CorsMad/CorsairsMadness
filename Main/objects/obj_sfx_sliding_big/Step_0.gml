/// @description Insert description here
// You can write your code in this editor

if instance_exists(obj_Player)
{
    if obj_Player.isSkatingonrail = 0 instance_destroy();
    image_alpha = abs(obj_Player.sspd)*0.5;
    image_xscale = obj_Player.image_xscale;
    
    #region соаздние линий
    if image_alpha >= 1 
    {
        t++;
        if t=5 
        {
            var line = instance_create_depth(x-sign(image_xscale)*10,y,depth+1,obj_sfx_sliding_line);
            if image_xscale = 1 
            {
                line.hspeed = choose(-3,-2.5,-2,-1.5);
            } else line.hspeed = choose(3,2.5,2,1.5);
            
            t = 0;
        }
    }else t = 0;
    #endregion
    
    
}
