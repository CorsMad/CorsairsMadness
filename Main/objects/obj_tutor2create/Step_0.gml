/// @description Insert description here
// You can write your code in this editor

t++;
if t = 200 
{
    var i = instance_create_depth(-16,-16,0,obj_Player);
    i.state = 1;
    i.DashEnabled = 0;
    instance_create_depth(-16,-16,0,obj_room_transition_to_loading); 
    
    #region Вазы
    
    global.vase_tutor2_r1_1 = 1;
    global.vase_tutor2_r1_2 = 1;
    
    global.vase_tutor2_r2_1 = 1;
    global.vase_tutor2_r2_2 = 1;
    
    global.vase_tutor2_r4_1 = 1;
    global.vase_tutor2_r4_2 = 1;
    
    global.vase_tutor2_r5_1 = 1;
    
    global.vase_tutor2_r6_1 = 1;
    global.vase_tutor2_r6_2 = 1;

    #endregion
}

