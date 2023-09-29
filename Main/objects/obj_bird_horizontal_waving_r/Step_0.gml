/// @description Insert description here
// You can write your code in this editor
#region movement
if state = 1
{
	x+=spd;
	y = y + sin(a)*2;
	a+= 0.05;
	image_xscale = sign(spd);
}
#endregion

#region #takedmg

// Атака

    fnc_take_dmg_hitbox(-10,0,-1,10,0,-1);

// Удар вниз   

    fnc_take_dmg_hitbox_down(0,-32,-1);
	
// Топор

    fnc_take_dmg_axe(-10,-16,-1,10,-16,-1,1);

// Бомба

    fnc_take_dmg_bomb(-10,-16,-1,10,-16,-1,1);

// Eball

	fnc_take_dmg_eball(0,-16,-1,1);

// Parrot

	fnc_take_dmg_parrot_laser(0,-16,-1,1)

// Получение урона

    fnc_enemy_no_armor_dmg();

#endregion

#region #hp

if enemy_hp < 1
{
	state = 2;
	instance_create_depth(x,y,1,obj_bird_blue_dead)
}

#endregion

#region death

if state = 2
{
	instance_create_depth(x,y,-1,obj_sfx_explosion);
    if !place_meeting(x,y,obj_block)
    {
        fnc_drop_mana_gold_after_death(30,45);
    }   
	instance_destroy();
}

#endregion

#region взаимодействие с пружинами

if place_meeting(x,y,obj_abil_boots_hitbox)
{
    fnc_snd_play_onetime(snd_player_springboots);
    obj_Player.sbootsbuffer = 1;
    obj_Player.vspd = -5;
    obj_Player.dash_counts = 1;
    instance_create_depth(obj_abil_boots_hitbox.x,obj_abil_boots_hitbox.y+20,obj_abil_boots_hitbox.depth-1,obj_sfx4);
    instance_destroy(obj_abil_boots_hitbox);
}
    
#endregion