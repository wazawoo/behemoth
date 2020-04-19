
with (oLeaf) {
	if (tilemap_get_at_pixel(global.collisionMap, x + hSpeed, y)) {
		//assumption: hSpeed < TILE_SIZE
		//if we collide, just go to the edge before/after this tile
	
		//find our tile index (same as integer division)	
		var tile_index = floor(x / TILE_SIZE)
	
		//go to the edge of that
		 if (hSpeed > 0) {
			x = TILE_SIZE*(tile_index+1) - 1
		 } else {
		    x = TILE_SIZE*tile_index
		 }	
	} else {
		x += hSpeed;
	}

	if (tilemap_get_at_pixel(global.collisionMap, x, y + vSpeed)) {
		//assumption: vSpeed < TILE_SIZE
		//if we collide, just go to the edge above/below this tile
	
		//find our tile index (same as integer division)
		var tile_index = floor(y / TILE_SIZE)
	
		//go to the edge of that
		 if (vSpeed > 0) {
			y = TILE_SIZE*(tile_index+1) - 1
		 } else {
		    y = TILE_SIZE*tile_index
		 }	
	} else {
		y += vSpeed;
	}
}
