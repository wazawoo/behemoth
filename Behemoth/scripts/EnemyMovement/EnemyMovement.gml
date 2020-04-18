


with (oEnemy) {
	if (object_index == oFireball) {
	
		//just move right
		x += moveSpeed
		
		//destroy once off screen
		if (x >= room_width) {
			instance_destroy();
		}
	}
}