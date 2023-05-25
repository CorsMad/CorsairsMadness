if place_meeting(x,y,obj_Player)
{
    obj_Player.x = 240;
    obj_Player.y = 496;
    obj_Player.vspd = 0;
    
}

if place_meeting(x,y,obj_boss_s2_phase1_death)
{
    obj_boss_s2_phase1_death.x = 304;
    obj_boss_s2_phase1_death.y = 496+32;
    obj_boss_s2_phase1_death.vspd = 0;
    obj_boss_s2_phase1_death.state = 3;
}