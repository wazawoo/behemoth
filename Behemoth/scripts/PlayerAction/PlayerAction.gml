
with (oLeaf) {
	
	var section = instance_position(x, y, oSection)
	if (section != noone) {
		if (oGame.keyHurt && section.hp > MIN_HP) {
			section.hp--;
		}
	
		if (oGame.keyHeal && section.hp < 100.0) {
			//TODO
			//make sure it isnt possible to hold heal inf
			//and prevent death...
			
			//maybe damage, check, heal is the right order?
			
			//depends how that last moment should play out
			
			section.hp++;
		}
	}

	if (oGame.keySplash) {
		//create splash
		//splash is alive while it animates
		
		
		//get directoin
		
		//make offest bigger to test
		instance_create_layer(x + TILE_SIZE*lastHorzSign, y - TILE_SIZE/2 + TILE_SIZE*lastVertSign, "Leaf", oSplash)
	
	
		//TODO
		//placing at center for now
		//make sure to have correct center for oSplash too
		//make correct bounding box for splash
	}
}
