/// @description Insert description here
// You can write your code in this editor
if (isOn = 1) {
    if y > max_height 
    {
        if t < 102 t++; 
        if t > 100 vspd = -0.5;
    } else isOn = 2;  
}

if isOn = 2{
    if instance_exists(obj_cutscene_l1_r_16_screenshake){
        obj_cutscene_l1_r_16_screenshake.state = 2;
    }
    if instance_exists(obj_cutscene_l2_r_7_screenshake){
        obj_cutscene_l2_r_7_screenshake.state = 2;
    }
    if instance_exists(obj_cutscene_l2p_r_5_screenshake){
        obj_cutscene_l2p_r_5_screenshake.state = 2;
    }
        
   vspd = 0;    
}
y+=vspd;
if place_meeting(x,y,obj_Player)
{
    global.hp=0;  
}