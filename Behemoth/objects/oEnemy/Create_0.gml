/// @description Insert description here
// You can write your code in this editor


//


if (object_index == oFireball) {
	objectToPlant = oFire
}


if (stationary) {
	//stationary
	depth = -bbox_bottom
} else {
	//flying
	
	//always above you
	depth = -1000
	
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