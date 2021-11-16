/// @description Insert description here
// You can write your code in this editor
hspd = 0;
vspd = 0;
spd = 2;
fspd = 0;
grav = 0.25;

oleg = 1;
dash_buffer_human = 0;

carryspd = 0;
afterhookspd = 0;
hookspd = 0;
attackspd = 0;
attacking_buffer = 0;
airattacking_buffer = 0;

#region Состояния 

//state = 1; // 0 - человек, 1 - маск, 2 - катсцена
isDead = 0;

isAttacking = 0;
isAirattacking = 0;
isAirattacking_timer = 0;
isGrounded = 0;
isSkidding = 0;
isSkidding_timer = 0;
isDashing = 0;
isAttackingdown = 0;
isWallclimbing = 0;
isOutjump = 0;
isClimbing = 0;
isRecoil = 0;
isUsingitem = 0;
isAirUsingitem = 0;
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


attackbuffer = 0;
airattackbuffer = 0;
dashingbuffer = 0;
hookingbuffer = 0;
jumpbuffer = 0;

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
transform_timer = 0;

#endregion

#region Ограничения

DashEnabled = 1;
HookEnabled = 1; /////

#endregion

#region Счетчики

dash_counts = 0;
jump_counts = 0;
dashing_timer_count = 0;
hooking_timer_count = 0;
dashing_timer_count_timer = 0;
silverkey_counts = 0;
dash_in_air = 0;
dash_on_ground = 0;
dash_count = 0;
dash_pad = 0;

#endregion

#region TIPS
tipBluepad = 0;
tipUseitem = 0;
tipBomb = 0;
tipDash = 0;
tipRedpad = 0;
#endregion

image_speed = 1.25;

isMeeting = 0;