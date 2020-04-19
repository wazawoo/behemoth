
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
	}
	
	var _offset = 4*healing
	if (lastHorzSign > 0) {
		//right
		image_index = 1+_offset
	} else if (lastHorzSign < 0) {
		//left
		image_index = 3+_offset
	}
	if (lastVertSign > 0) {
		//down
		image_index = 0+_offset
	} else if (lastVertSign < 0) {
		//up
		image_index = 2+_offset
	}
		
	//check for collision and move if we arent healing
	if (!healing) {
		Collision();

		//do this after collision and movement
		depth = -bbox_bottom
	}
}

