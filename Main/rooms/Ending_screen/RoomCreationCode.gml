var sum = global.saved_jungle + global.saved_desert + global.saved_snow + global.saved_shadow + global.saved_vulcano;

switch(sum){
    case 0: // не спас никого
        obj_ending.ending = 3;
        break;
    case 5: // спас всех
        obj_ending.ending = 1;
        break;
    default:// спас не всех
        obj_ending.ending = 2;
        break;
}


// Появление команды

if global.saved_jungle	= 1	{
	instance_create_depth(368,240,0,obj_end_jake)
}
if global.saved_desert	= 1	{
	instance_create_depth(400,240,0,obj_end_pew)
}
if global.saved_snow	= 1	{
	instance_create_depth(448,240,0,obj_end_sully)
}
if global.saved_vulcano = 1	{
	instance_create_depth(608,240,0,obj_end_bonnie)
}
if global.saved_shadow	= 1	{
	instance_create_depth(576,240,0,obj_end_petro)
}
