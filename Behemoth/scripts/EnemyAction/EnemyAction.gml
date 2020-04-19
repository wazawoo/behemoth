
with (oEnemy) {
	//should be only a small chance to do this...
	if (canPlant) { 
		//plant an enemy if above a section
		//lets just plant immediately for now
		//(as soon as we enter a section)
		
		var _collidedSection = instance_position(x, y, oSection);
		
		if (_collidedSection != noone) {
			instance_create_layer(x,y,"Enemies", objectToPlant);
			//destroy self
			instance_destroy();
		}
	}
	
	if (stationary) {
		//do damage to object we are attached to
		//could attach the object on creation to reduce computation
		
		
		var _collidedSection = instance_position(x, y, oSection);
		_collidedSection.hp -= dps/FRAME_RATE
	}
}
