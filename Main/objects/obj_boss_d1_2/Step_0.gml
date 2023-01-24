/// @description Insert description here
// You can write your code in this editor

#region  1 ФАЗА 1

#region  2 Проявление сандеров

if state = 2
{
    t++;
    if t = 50
    {
        instance_create_depth(x-64,y-64,depth-1,obj_boss_d1_sander);
    
    }
    if t = 100
    {
        t = 0;   
    }
}
#endregion

#endregion

#region 3 Фаза 2 

#region 4 Появление сандеров

#endregion

#region 5 Серия выстрелов из глаза

#endregion

#endregion


#region 6 Попадание стрелой в глаз

if state = 6
{
    if t < 102 t++;
    if t = 100 instance_create_depth(x-96,y-32,depth-1,obj_boss_d1_eye1_ph1);
}

#endregion

#region выкатывание глаза

#endregion

#region закатывание глаза назад

#endregion

#region Закатывание глаза + восстановление всех хп и переход во вторую фазу

#endregion
