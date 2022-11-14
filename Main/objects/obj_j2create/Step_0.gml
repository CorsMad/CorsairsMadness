/// @description Insert description here
// You can write your code in this editor

t++;
if t = 1 
{
    var i = instance_create_depth(-16,-16,0,obj_Player);
    i.state = 0;
    i.specabilnumber = 1;
    instance_create_depth(-16,-16,0,obj_room_transition_to_loading); 
    
    #region Сундуки
    global.chest_j2_r1 = 1;
    global.chest_j2_r3 = 1;
    global.chest_j2b_r4 = 1;
    global.chest_J2p_r3 = 1;
    #endregion
    
    
    #region Проходы
    global.secretpass_j2_r4 = 1;
    global.secretpass_j2b_r3 = 1;
    #endregion

}

