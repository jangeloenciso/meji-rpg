// movement variables
	xspd = 0;
	yspd = 0;

	move_spd = 1;

// sprite control
	center_y_offset = -5;
	center_y = y + center_y_offset; // set in step event

// arm offset
	weapon_offset_dist = 4;

	aim_dir = 0;

	sprite[RIGHT] = spr_player_right;
	sprite[UP] = spr_player_up;
	sprite[LEFT] = spr_player_left;
	sprite[DOWN] = spr_player_down;

	face = DOWN;

// weapon info
	bullet_obj = obj_mint_bullet;
	shoot_timer = 0;
	
// add weapons to player weapons

	selected_weapon = 0;
	weapon = global.player_weapons[selected_weapon];
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	