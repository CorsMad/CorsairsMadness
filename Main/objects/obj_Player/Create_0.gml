/// @description Insert description here
// You can write your code in this editor
hspd = 0;
vspd = 0;
spd = 2;
sspd = 0;
fspd = 0;
doublejumpspd = 0;
grav = 0;//0.25;
superdash_y = obj_Player.y;

oleg = 1;
dash_buffer_human = 0;

carryspd = 0;
afterhookspd = 0;
hookspd = 0;
attackspd = 0;
attacking_buffer = 0;
airattacking_buffer = 0;

#region Состояния 

//state = 1; // 0 - человек, 1 - маск, 11 - переход в телепорт, 2 - катсцена
isDead = 0;

isAttacking = 0;
isAirattacking = 0;
isAirattacking_timer = 0;
isGrounded = 0;
isSkidding = 0;
isSkidding_timer = 0;
isSkating = 0;
isSkatingonrail = 0;
isSkatingAttack = 0;
isDashing = 0;
isAttackingdown = 0;
isWallclimbing = 0;
isOutjump = 0;
isClimbing = 0;
isRecoil = 0;
isUsingitem = 0;
isUsingabil = 0;
isAirUsingitem = 0;
isAirUsingabil = 0;
isHooking = 0;
isGravitate = 0;
isTakingdmg = 0;
isCarry = 0;
isPickup = 0;
isThrowingBomb = 0
isAirThrowingBomb = 0;
isVulnerable = 1;
isHookiframes = 0;
isAfterhook = 0;
isFlueting = 0;

attackbuffer = 0;
airattackbuffer = 0;
dashingbuffer = 0;
hookingbuffer = 0;
jumpbuffer = 0;
sbootsbuffer = 0;
lanhit = 0;
lanplace = 0;
#endregion

#region Предметы

switch(global.choosed_item)
{
    case 2: // ТОПОР
        switch(global.choosed_item_tier)
        {
            case 1: item_tier = obj_item_axe;
                    break;
            case 2: item_tier = obj_item_axe2;
                    break;
            case 3: item_tier = obj_item_axe3;
                    break;         
        }
	break;
    case 3: // БОМБА
        switch(global.choosed_item_tier)
        {
            case 1: item_tier = obj_item_bomb;
                    break;
            case 2: item_tier = obj_item_bomb2;
                    break;
            case 3: item_tier = obj_item_bomb3;
                    break;       
        }
    break;
    case 4: // Eball
        switch(global.choosed_item_tier)
        {
            case 1: item_tier = obj_item_eball;
                    break;
            case 2: item_tier = obj_item_eball2;
                    break;
            case 3: item_tier = obj_item_eball3;
                    break;       
        }
    break;
    case 5: // Parrot
        switch(global.choosed_item_tier)
        {
            case 1: item_tier = obj_item_parrot_proj1;
                    break;
            case 2: item_tier = obj_item_parrot_proj2;
                    break;
            case 3: item_tier = obj_item_parrot_proj3;
                    break;       
        }
    break;
}

#endregion

#region Таймеры

jump_timer = 0;
attackingdown_timer = 0;
wallclimb_timer = 0;
climbing_timer = 0;
coyote_timer = 0;
damage_cd = 0;
death_timer = 0;
pickup_timer = 0;
recoil_timer = 0;
hook_iframes_timer = 0;
sprkl_timer_dash = 0;
sprkl_timer_hook = 0;
dashing_timer = 0;
hooking_timer = 0;
spectp_timer = 0;
superdash_spec_timer = 0;
transform_timer = 0;
fluettimer = 0;
comboTimer = 0;
t_dia = 0;

#region special timer
pos_teleport_turn_timer = 0;
move_to_cloud = 0;
teleport_delay_timer = 0;
cloud_exist_timer = 0;
#endregion

#endregion

#region Ограничения

DashEnabled = 1; //global.dash;
HookEnabled = 0; //global.fhook; /////
SpectpEnabled = 1;// TP

SpecAbil = 1;
#region Спец абилки human
specabilnumber = 4;

/*
1 - boots
2 - флейта
3 - бумеранг
4 - арбалет
5 - коньки
*/
#endregion


#region Спец абилки Possessed
// 1 - hook, 2 - teleport, 3 - superdash , 4 - doublejump, 5 - clone

SpecAbilMask = 1;
#endregion


#endregion

#region Счетчики

dash_counts = 0;
jump_counts = 0;
dashing_timer_count = 0;
hooking_timer_count = 0;
superdash_timer_count = 0;
spectp_timer_count = 0;
dashing_timer_count_timer = 0;
silverkey_counts = 0;
dash_in_air = 0;
dash_on_ground = 0;
dash_count = 0;
dash_pad = 0;
comboTimer = 0;
comboMeter = 0;
canDoubleJump = 1;
canSuperDash = 1;
#endregion

#region TIPS
tipBluepad = 0;
tipUseitem = 0;
tipBomb = 0;
tipDash = 0;
tipRedpad = 0;
#endregion

#region Появление после телепорта

tp_timer = 0;
revive_timer = 0;
blob_cr = 0;
movespeed_intp = 0;
#endregion

#region Супердеш
superdash_power = 0;
superdash_timer = 0;
dash_timer = 0;
dash_vfx_timer = 0;
#endregion

#region

turn_in_clone_timer = 0;
turn_out_clone_timer = 0;
clone_timer = 0;
movespeed_inclone = 6;
sk_t = 0;

#endregion

image_speed = 1.25;

isMeeting = 0;

tp = 0;