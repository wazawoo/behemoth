
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
			//depends heal dps vs enemy pain dps
			//can determine how many fires/etc overwhelm the healing
			
			section.hp++;
		}
	}

	if (oGame.keySplash) {
		//create splash
		//splash is alive while it animates
		instance_create_layer(x + TILE_SIZE*lastHorzSign, y - TILE_SIZE/2 + TILE_SIZE*lastVertSign, "Leaf", oSplash)
	}
}
