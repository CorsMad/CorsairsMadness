/// @description Insert description here
// You can write your code in this editor
hspd = 0;
vspd = 0;
spd = 2;
fspd = 0;
grav = 0.25;

carryspd = 0;
afterhookspd = 0;

#region Состояния 

state = 1; // 0 - человек, 1 - маск
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


#endregion

#region Таймеры

dashing_timer = 0;
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

#endregion

#region Ограничения

DashEnabled = 0;

#endregion

#region Счетчики

dash_counts = 0;
jump_counts = 0;
silverkey_counts = 0;

#endregion

image_speed = 1.25;

isMeeting = 0;