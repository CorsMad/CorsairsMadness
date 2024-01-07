/// @description Insert description here
// You can write your code in this editor

t++;
if t = 100 
{
    var i = instance_create_depth(-16,-16,0,obj_Player);
    i.state = 1;
    i.HookEnabled = 0;
	i.isDead = 2.1;
    instance_create_depth(-16,-16,0,obj_room_transition_to_loading); 
    /*
    #region Загрузка ворот
    global.dc_onl_f1_8 = 0;
    global.dc_onl_f1_10 = 0;
    global.dc_onl_f1_14 = 0;
    global.dc_onl_f1_16 = 0;
    global.dc_onl_f1_21 = 0;
    global.dc_onl_f1_23 = 0;
    global.dc_onl_f1_27 = 0;
    global.dc_onl_f1_29 = 0;
    global.dc_onl_f1_34 = 0;
    global.dc_onl_f1_36 = 0;
    global.dc_onl_f1_40 = 0;
    #endregion
    #region Загрузка катсцены
    #endregion
    */
}

