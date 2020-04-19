
with (oEnemy) {
	if (object_index == oFireball) {
	
		//move at constant speed
		x += moveSpeed
		
		//destroy once off screen
		if (x >= room_width) {
			instance_destroy();
		}
	}
}