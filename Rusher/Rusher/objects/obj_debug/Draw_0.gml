//draw_set_color(c_black)
//draw_text(room_width/2,64,obj_inventory.shown);
if instance_exists(obj_enemy_parent){
draw_text(64,64,obj_enemy_parent.EnemyCreator.weak_count);
draw_text(64,96,obj_enemy_parent.turn);}
//draw_text(96,64,obj_enemy_parent.special_weakness[0])}