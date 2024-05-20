/// @description Insert description here
// You can write your code in this editor
if (isOn = 1) {
    if y > max_height 
    {
        if t < 102 t++; 
        //if t > 100 vspd = vspd_spd;
        
		//TEST
		if t > 100 {			
			vspd = vspd_spd;
			if instance_exists(obj_Player){
				if abs(y-obj_Player.y) < 96 vspd_spd = lerp(vspd_spd,-0.3,0.05) else vspd_spd = lerp(vspd_spd,-0.9,0.05) 
			}
		}
		
		
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




t_sp++;
if t_sp = 10 {
    
    for (var k = 0; k < 16; k++) {
        instance_create_depth(x+random_range(32,480-32),y+random_range(16,40),depth-1000,obj_lava_sparkle);
    }
    t_sp = 0;
}
