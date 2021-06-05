if isOn = 1
{
	sprite_index = spr_electric_pillar_on;
	
	while a < a_max
	{
		if round(a/2)*2 = a 
			{
				instance_create_depth(x+16*a,y-42,-1,obj_electric_pillar_electicity1);	// СОСАТЬ
			} else  instance_create_depth(x+16*a,y-42,-1,obj_electric_pillar_electicity2);	
		a++
	}
}
if isOn = 0
{
	sprite_index = spr_electric_pillar_off
	a = 0	
	if instance_exists(obj_electric_pillar_electicity1)
	{
		obj_electric_pillar_electicity1.isOn = 0;
	}
	if instance_exists(obj_electric_pillar_electicity2)
	{
		obj_electric_pillar_electicity2.isOn = 0;
	}
}


b++;
if b  > b_middle 
{
	isOn =1;	
} else isOn = 0;
if b > b_max
{
	b = 0;	
}