/// @description Insert description here
// You can write your code in this editor
/*
if instance_exists(obj_boss_d1_1)
{
    draw_text(32,48,string(obj_boss_d1_1.state)) ;
    draw_text(32,64,string(obj_boss_d1_1.t));
}
*/


	
    if instance_exists(obj_boss_g2_phase1)
    {
		draw_text(32,48,string(obj_boss_g2_phase1.t));        
        draw_text(32,64,string(obj_boss_g2_phase1.state)) ;        
        draw_text(32,80,string(obj_boss_g2_phase1.place_appear)) ;                
        draw_text(32,96,string(obj_boss_g2_phase1.place_appear_prev)) ;                
    }
   
	
	
    //if instance_exists(obj_boss_d2_phase2)
    //{
    //    draw_text(32,48,string(obj_boss_d2_phase2.state)) ;
    //    draw_text(32,64,string(obj_boss_d2_phase2.t));  
    //}

    //draw_text(50,128,string(obj_maze2_controller1.choosed)); 
    //draw_text(60,128,string(obj_maze4_controller.b4)); 
    //draw_text(70,128,string(obj_maze4_controller.b5)); 
    //draw_text(80,128,string(obj_maze4_controller.b6)); 
