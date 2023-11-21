// drawing the player's weapon
function draw_my_weapon() {
	var _x_offset = lengthdir_x( weapon_offset_dist, aim_dir );
	var _y_offset = lengthdir_y( weapon_offset_dist, aim_dir );
	
	// flip weapon upright
	var _weapon_y_scl = 1;
	
	if aim_dir > 90 && aim_dir < 270 {
		_weapon_y_scl = -1;	
	}
	draw_sprite_ext( weapon.sprite, 0, x + _x_offset, center_y + _y_offset, 1, _weapon_y_scl, aim_dir, c_white, 1 );
}