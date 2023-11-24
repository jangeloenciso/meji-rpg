

// chase the player
	if instance_exists(obj_player){
		dir = point_direction(x, y, obj_player.x, obj_player.y);
	}
	
	// get speed
	xspd = lengthdir_x(spd, dir);
	yspd = lengthdir_y(spd, dir);
	
	// get correct face
	if xspd > 0 { face = 1; } else { face = -1 };
	
	// collissions
	if place_meeting(x + xspd, y, obj_wall) || place_meeting(x + xspd, y, obj_enemy_parent) { 
		xspd = 0; 
	};
	
	if place_meeting(x, y + yspd, obj_wall) || place_meeting(x, y + yspd, obj_enemy_parent) {
		yspd = 0; 
	};

	// moving
	x += xspd;
	y += yspd;



// inherit damage and dying logic
	event_inherited();

