// draw the weapon behind the player if in combat
if aim_dir >= 0 && aim_dir < 180 {
	if global.in_combat { draw_my_weapon(); }
}

draw_self();

// draw the weapon if in combat
if aim_dir >= 180 && aim_dir < 360 {
	if global.in_combat { draw_my_weapon(); }
}
