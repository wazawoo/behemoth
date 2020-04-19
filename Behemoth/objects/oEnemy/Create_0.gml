/// @description Insert description here
// You can write your code in this editor


//

if (!stationary) {
	//spawn left or right edge
	
	//set x to left or right side
	if (irandom(1)) {
		x = 0
	} else {
		x = room_width
		moveSpeed = -moveSpeed
	}
	
	//random height
	y = irandom(room_height)
}