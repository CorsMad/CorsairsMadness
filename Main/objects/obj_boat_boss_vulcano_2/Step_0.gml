/// @description Insert description here
// You can write your code in this editor

/*
  0 - //выстрелы правой клешней вверх большим снарядом
  1 - //призыв скелетов
  2 - // если есть стена - выпуск тины и бочка с пушкой
*/

switch(state)
{
	case 0:
		#region выстрелы правой клешней вверх большим снарядом
		
		t++;
		if t =  100
		{
			instance_create_depth(x,y,depth,obj_boat_boss_vulcano_proj_2_1);
		}
		
		if t = 200 
		{
			t = 0;
			state = 1;
		}
		
		#endregion
		break;	
	case 1:
		#region Призыв скелетов
		t++;
		switch(t)
		{
			case 50:
				break;
			case 100:
				break;
			case 150:
				break;
			case 200:
				t = 0;
				state = 0;
				break;
		}
		#endregion
		break;
}	