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

// ПОЯВЛЕНИЕ ЧЕЛИКОВ
if global.saved_jungle  = 1 instance_create_depth(x,y,0,obj_end_jake);
if global.saved_desert  = 1 instance_create_depth(x,y,0,obj_end_pew);
if global.saved_snow    = 1 instance_create_depth(x,y,0,obj_end_sully);
if global.saved_shadow  = 1 instance_create_depth(x,y,0,obj_end_petro);
if global.saved_vulcano = 1 instance_create_depth(x,y,0,obj_end_bonnie);