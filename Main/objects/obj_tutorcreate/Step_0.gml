/// @description Insert description here
// You can write your code in this editor

t++;
if t = 200 
{
    var i = instance_create_depth(16,16,101,obj_Player);
    i.state = 0;
    i.DashEnabled = 0;
    instance_create_depth(16,16,101,obj_room_transition_to_loading); 
    
    #region Сундуки
    global.chest_tutor_r7 = 1;
    global.chest_tutor_r8 = 1;
    #endregion
}

