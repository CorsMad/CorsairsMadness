/// @description Insert description here
// You can write your code in this editor

t++;
if t = 100 
{
    var i = instance_create_depth(-16,-16,0,obj_Player);
    i.state = 1;
    i.SpecAbilMask = 5;
    instance_create_depth(-16,-16,0,obj_room_transition_to_loading); 
    
    #region Загрузка ворот
    global.dc_onl_jp2_7 = 0;
    global.dc_onl_jp2_9 = 0;
    global.dc_onl_jp2_12 = 0;
    global.dc_onl_jp2_13 = 0;
    
    #endregion
    #region Загрузка катсцены
    global.Cutscene_jp2_r15 = 1;
    #endregion
}

