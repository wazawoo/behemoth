
with (oLeaf) {
	//TODO move this into heal check
	//for now, keeping hurt in for debugging
	var section = instance_position(x, y, oSection)
	
	if (oGame.keyHeal) {
		framesPressingHeal++
		
		if (framesPressingHeal >= FRAMES_TO_HEAL) {
			healing = true
			//they have held it long enough, so heal
			if (section != noone && section.hp < 100.0) {
				section.hp++;
			}
		}
	} else {
		if (framesPressingHeal > 0) {
			//they just let go, see how long they held it
			if (framesPressingHeal < FRAMES_TO_HEAL) {
				//do the splash
				//create splash
				//splash is alive while it animates
				var _splash = instance_create_layer(x + TILE_SIZE*lastHorzSign, y - TILE_SIZE/2 + TILE_SIZE*lastVertSign, "Leaf", oSplash)	
				_splash.image_angle = point_direction(
					0,
					0,
					lastHorzSign,
					lastVertSign) - 90;	
			}
			
			//reset it since they let go
			framesPressingHeal = 0
			healing = false
		}
	}
	
	if (oGame.keyHurt && section != noone && section.hp > MIN_HP) {
		section.hp--;
	}
}
