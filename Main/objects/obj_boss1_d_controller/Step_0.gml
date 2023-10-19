/// @description Insert description here
// You can write your code in this editor
if phase = 0
{
    t++; 
    if t = 100
    {
        fnc_msc_start_checkpoint(msc_boss_fight);
      // создание первой фазы
      instance_create_depth(544,208,0,obj_boss_d1_1);
      t =0;
      phase = 1;
      instance_destroy();
    }
}

