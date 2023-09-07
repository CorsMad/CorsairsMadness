/// @description Insert description here
// You can write your code in this editor
player_input();

if t < 102 t++;
switch(t)
{
    case 50: alpha = 0.5;break;   
    case 100: 
        alpha = 1;
        break;   
	case 101:
		canSkip = 1;
		break;
}

if canSkip = 1 && (key_attack || key_jump)
{
    instance_create_depth(x,y,-100000,obj_npc_junglev_merch_choose);
    instance_destroy();
}

