
with (oLeaf) {
	inputDirection = point_direction(
		0,
		0,
		oGame.keyRight - oGame.keyLeft,
		oGame.keyDown - oGame.keyUp);
	inputMagnitude = (oGame.keyRight - oGame.keyLeft != 0) || (oGame.keyDown - oGame.keyUp != 0);


	//every frame, so accelerates quick...
	speedMultiplier += lerp(-1, 1, inputMagnitude)*0.1
	speedMultiplier = clamp(speedMultiplier, 1.0, 2.5)

	//calculate actual walking speed
	hSpeed = speedMultiplier * lengthdir_x(inputMagnitude * walkSpeed, inputDirection);
	vSpeed = speedMultiplier * lengthdir_y(inputMagnitude * walkSpeed, inputDirection);
	
	//down, right, up, left
	if (abs(hSpeed) > 0 || abs(vSpeed) > 0) {	
		//record our last direction
		lastHorzSign = sign(hSpeed);
		lastVertSign = sign(vSpeed);
		
		if (lastHorzSign > 0) {
			//right
			image_index = 1
		} else if (lastHorzSign < 0) {
			//left
			image_index = 3
		}
		if (lastVertSign > 0) {
			//down
			image_index = 0
		} else if (lastVertSign < 0) {
			//up
			image_index = 2
		}
	}
	//verify this works for diagonal...
	//it should prefer vertical if diag.
	//actually, last one that we let go
	//hmm
	//we need both
	//fix in a second

	//check for collision and move
	Collision();

	//do this after collision and movement
	depth = -bbox_bottom
}

