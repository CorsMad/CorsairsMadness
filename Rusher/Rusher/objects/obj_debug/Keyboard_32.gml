/// @description Insert description here
// You can write your code in this editor
//game_restart()
//if !instance_exists(obj_lvlup) scr_lvlup()


 if  t = 0{
     t = 1;
    if instance_exists(obj_enemy_parent){
    if obj_enemy_parent.EnemyCreator.boss = 1{       

        obj_enemy_parent.EnemyCreator.weak_count -=1;
        //array_set(obj_enemy_parent.special_weakness,0,spr_blank);
        array_delete(obj_enemy_parent.special_weakness,0,1)  
        show_debug_message(obj_enemy_parent.special_weakness);
    }
}
   
}