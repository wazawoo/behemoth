
with (oEnemy) {
	if (object_index == oFireball) {
	
		//move at constant speed
		x += moveSpeed
		
		//destroy once off screen
		if (x > room_width || x < 0) {
			instance_destroy();
		}
	}
}