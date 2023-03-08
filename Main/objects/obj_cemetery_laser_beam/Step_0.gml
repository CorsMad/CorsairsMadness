/// @description Insert description here
// You can write your code in this editor
while a < a_max
{
    switch(angle)
    {
        case 0:     var k1 = instance_create_depth(x+16*a,y,-1,obj_cemetery_laser_beam_start);k1.angle = angle;	
            break;
        case 90:    var k2 = instance_create_depth(x,y-16*a,-1,obj_cemetery_laser_beam_start);k2.angle = angle;	 	
            break;
        case 180:   var k3 = instance_create_depth(x-16*a,y,-1,obj_cemetery_laser_beam_start);k3.angle = angle;	 	
            break;
        case 270:   var k4 = instance_create_depth(x,y+16*a,-1,obj_cemetery_laser_beam_start);k4.angle = angle;	 	
            break;
    }
    
    
	a++
      
    if a = a_max 
    {
        switch(angle)
    {
        case 0:     var i1 = instance_create_depth(x+16*a,y,-1,obj_cemetery_laser_beam_start_end);i1.angle = angle; 	
            break;
        case 90:    var i2 = instance_create_depth(x,y-16*a,-1,obj_cemetery_laser_beam_start_end);i2.angle = angle;  	
            break;
        case 180:   var i3 = instance_create_depth(x-16*a,y,-1,obj_cemetery_laser_beam_start_end);i3.angle = angle;  	
            break;
        case 270:   var i4 = instance_create_depth(x,y+16*a,-1,obj_cemetery_laser_beam_start_end);i4.angle = angle;  	
            break;
    }
               
        instance_destroy();
        break;       
    } 
}