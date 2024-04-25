/// @description Insert description here
// You can write your code in this editor
	depth = -y;
	x+=hspd;
	image_alpha = alpha;
	
	//if alpha <= 0 instance_destroy()
	if instance_exists(obj_sp_boat_J2) {
		hspd = 2*obj_sp_boat_J2.sp_wat;
		alpha = abs(obj_sp_boat_J2.sp_wat)-alpha_offset;
	}
	if instance_exists(obj_sp_boat_D2) {
		hspd = 2*obj_sp_boat_D2.sp_wat;
		alpha = abs(obj_sp_boat_D2.sp_wat)-alpha_offset;
	}
	if instance_exists(obj_sp_boat_S2) {
		hspd = 2*obj_sp_boat_S2.sp_wat;
		alpha = abs(obj_sp_boat_S2.sp_wat)-alpha_offset;
	}
	if instance_exists(obj_sp_boat_G2) {
		hspd = 2*obj_sp_boat_G2.sp_wat;
		alpha = abs(obj_sp_boat_G2.sp_wat)-alpha_offset;
	}
	if instance_exists(obj_sp_boat_L2) {
		hspd = 2*obj_sp_boat_L2.sp_wat;
		alpha = abs(obj_sp_boat_L2.sp_wat)-alpha_offset;
	}
