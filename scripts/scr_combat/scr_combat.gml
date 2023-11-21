// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function activate_combat(){
	face = round(aim_dir/90);
	if face == 4 { face = 0; };
	
	// player aiming
	center_y = y + center_y_offset;
	
	// aim
	aim_dir = point_direction(x, center_y, mouse_x, mouse_y);

	// shoot weapon
	if shoot_timer > 0 { shoot_timer--; };
	if shoot_key && shoot_timer <= 0 {
		
		// reset timer
		shoot_timer = weapon.cooldown;
		
		// create bullet
		var _x_offset = lengthdir_x(weapon.weapon_length + weapon_offset_dist, aim_dir);
		var _y_offset = lengthdir_y(weapon.weapon_length + weapon_offset_dist, aim_dir);
		
		var _bullet_inst = instance_create_depth(x + _x_offset, center_y + _y_offset, depth-100, weapon.bullet_obj);
		
		// change bullet direction
		with (_bullet_inst) {
			dir = other.aim_dir;
		}
	}
}