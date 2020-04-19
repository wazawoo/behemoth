/// @description Insert description here
// You can write your code in this editor

if (image_index == image_number - 1) {
	show_debug_message("looped once")
	loopedOnce = true
} else {
	if (loopedOnce) {
		instance_destroy();
	}
}