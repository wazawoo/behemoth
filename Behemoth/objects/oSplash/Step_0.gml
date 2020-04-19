/// @description Insert description here
// You can write your code in this editor


//does this happen before or after draw?
//make rate really slow to see
if (image_index == image_number - 1) {
	loopedOnce = true
}

if (image_index == 0 && loopedOnce) {
	instance_destroy();
}