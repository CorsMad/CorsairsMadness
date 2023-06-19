/// @description Insert description here
// You can write your code in this editor

/*
  0 - //выстрелы правой клешней вверх
  1 - //выстрел в игрока лазером
  2 - //выстрелы в игрока из пушки
*/

switch(state)
{
	case 0: 
		#region выстрелы правой клешней вверх
		t++;

		if t mod 10 = 0 && t > 50 && t < 105 
		{
			instance_create_depth(x,y,depth-1,obj_boat_boss_vulcano_proj_1_1);
		}
		
		if t = 250
		{
			t = 0;
			state = 1;
		}
		
		#endregion
		break;
	case 1:
		#region выстрел в игрока лазером
		t++;
		if t = 50
		{
			// выстрел лазером	
		}
		if t = 100 
		{
			t = 0;			
			if instance_exists(obj_boat_boss_vulcano_1_wall) 
			{
				state = 3;
			} else state = 2;
		}
	#endregion		
		break;
	case 2:
		#region выстрелы в игрока из пушки	
		t++;
		if t mod 10 = 0 && t > 100 && t < 150 
		{
			instance_create_depth(x,y,depth,obj_boat_boss_vulcano_proj_1_2);
		}
		if t = 200
		{
			t = 0;
			state = 0;
		}
		#endregion
		break;
	case 3: 
		#region выстрелы из стены
		t++;
		if t =	2
		{
			if instance_exists(obj_boat_boss_vulcano_1_wall) 
			{
				obj_boat_boss_vulcano_1_wall.isOn = 1;	
			}
		}
		if t = 200
		{
			t = 0;
			state = 0;
		}
		#endregion		
		break;
}