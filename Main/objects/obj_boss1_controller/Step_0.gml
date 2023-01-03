/// @description Insert description here
// You can write your code in this editor
#region Бездейтвие
#endregion

#region Появление первого босса
if state = 1 
{
	t++;
	if t=180 
	{
        fnc_msc_play(msc_boss_fight);
		instance_create_depth(532,0,0,obj_boss1_phase1);	
		t = 0;
		state = 0;
	}
}
#endregion

#region Появление второго босса
if state = 2 
{
	t++;
	if t=180 
	{
		instance_create_depth(532,0,0,obj_boss1_phase2);	
		t = 0;
		state = 0;
	}
}
#endregion

#region Появление третьего босса

if state = 3 
{
	t++;
	if t=180 
	{
		instance_create_depth(532,0,0,obj_boss1_phase3);	
		t = 0;
		state = 0;
	}
}
#endregion

#region Переход в эндскрин
if state = 4
{
    instance_create_depth(x,y,0,obj_room_transition_black_screen_lvl1_finish);   
}
#endregion


