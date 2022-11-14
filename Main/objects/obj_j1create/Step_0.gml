/// @description Insert description here
// You can write your code in this editor

t++;
if t = 100 
{
    var i = instance_create_depth(-16,-16,0,obj_Player);
    i.state = 0;
    i.specabilnumber = 1;
    instance_create_depth(-16,-16,0,obj_room_transition_to_loading); 
    
    #region Сундуки
    global.chest_j1_r3 = 1;
    global.chest_j1_r7 = 1;
    global.chest_j1_r9 = 1;
    global.chest_j1_r14 = 1;
    #endregion
    

    
    #region Головоломка
    global.maze_trigger1_j1_r13 = 0;
    global.maze_trigger2_j1_r13 = 0;
    global.maze_trigger3_j1_r13 = 0;
    global.maze_trigger4_j1_r13 = 0;
    
    #endregion
}

