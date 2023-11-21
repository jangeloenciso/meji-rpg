// move
	xspd = lengthdir_x(spd, dir);
	yspd = lengthdir_y(spd, dir);

	image_angle = dir;

	x += xspd;
	y += yspd;
	
// cleanup
	// destroy
	if destroy {
		//vfx
		instance_destroy();	
	}

	// collision
	if place_meeting( x + xspd, y, obj_wall ) { 
		destroy = true;
	}
	
	
	//bullet out of range
	if point_distance(xstart, ystart, x, y) > max_dist {
		destroy = true;
	}
	
