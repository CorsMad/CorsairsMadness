/// @description Insert description here
// You can write your code in this editor

t++;
if t = 100 
{
    var i = instance_create_depth(-16,-16,0,obj_Player);
    i.state = 0;
	i.isDead = 2.1;
	if global.dia_jungleComt < 1 i.specabilnumber = 1; else i.specabilnumber = 0;       
    instance_create_depth(-16,-16,0,obj_room_transition_to_loading); 
    
    #region Сохранение золота
    
    global.gold_prelevel = global.gold;
    
    #endregion
}

