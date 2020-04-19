
with (oEnemy) {
	if (canPlant && (global.stepCount + stepOffset) % FRAME_RATE == 0) { 
		//plant an enemy if above a section
		
		//can reduce the probability that it will plant
		//or scale it as the game goes on
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
