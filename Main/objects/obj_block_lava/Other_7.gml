/// @description Insert description here
// You can write your code in this editor

chance = irandom(10)
if (chance < 7) {
    sprite_index = spr_lava_ground1;
}
if (chance >= 7 && chance < 8) {
    sprite_index = spr_lava_ground2;
}
if (chance >=8 && chance <= 9) {
    sprite_index = spr_lava_ground3;
}