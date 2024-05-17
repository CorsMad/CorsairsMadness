/// @description Insert description here
// You can write your code in this editor

#region Счетчик

#region states

switch(state){
	case 0:
		t++;
	    if t = 50 
	    {
	        var b1 = instance_create_depth(416,176,depth,obj_boat_boss_shadow_arrival)
			b1.boss_phase = obj_boat_boss_shadow_1;
	        t = 0;
	        state = 1;
	    }
		break;
	case 2:
		t++;
	    if t = 50 
	    {
	        var b1 = instance_create_depth(416,176,depth,obj_boat_boss_shadow_arrival)
			b1.boss_phase = obj_boat_boss_shadow_2;
	        t = 0;
	        state = 3;
	    }
		break;
	case 3:
		global.boatCheckpoint = 1;
		break;
	case 4:
		t++;
	    if t = 50 
	    {
	        var b1 = instance_create_depth(416,176,depth,obj_boat_boss_shadow_arrival)
			b1.boss_phase = obj_boat_boss_shadow_3;
	        t = 0;
	        state = 5;
	    }
		break;
	case 5:
		global.boatCheckpoint = 2;
		break;
}




#endregion


#region 16.5 Перед концом

if state = 16.5
{
    t++;
    if t = 150
    {
        t = 0;
        state = 17;
        obj_Player_boat.canControl = 0;
        obj_Player_boat.state = 10;
    }
}


#endregion

#endregion

#region 17 - Скорость задников

layer_hspeed(l_water,sp_wat);
layer_hspeed(l_farwater,sp_farwat);
layer_hspeed(l_toofarwater,sp_toofarwat);
//layer_hspeed(l_Skies,sp_skies);


if state = 17
{
    if t < 300
    {
        t++;
    }
    
    if t > 200
    {
        sp_wat = lerp(sp_wat,-0.5,0.02);
        sp_farwat = lerp(sp_farwat,-0.25,0.02);
        sp_toofarwat = lerp(sp_toofarwat,-0.1,0.02);
        sp_skies = lerp(sp_skies,0,0.02);
    }
    
    
    if t = 299
    {
        instance_create_depth(0,0,-1000000,obj_boat_menu_end_j2);   
    }
    
 
}

#endregion