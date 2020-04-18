/// @description Insert description here
// You can write your code in this editor


//check for relevant global keys

keyLeft  = keyboard_check(vk_left)  || keyboard_check(ord("A"));
keyRight = keyboard_check(vk_right) || keyboard_check(ord("D")); 
keyUp    = keyboard_check(vk_up)    || keyboard_check(ord("W")); 
keyDown  = keyboard_check(vk_down)  || keyboard_check(ord("S"));

keyEsc   = keyboard_check_pressed(vk_escape);
keyEnter = keyboard_check_pressed(vk_enter);


//testing cycle
//room transitions are good
switch (room) {
	case rTitle:
		if (keyEnter) {
			room_goto(rGame)
		}
		break;
	case rGame:
		//temporary...
		if (keyEnter) {
			room_goto(rRetry)
		}
		break;
	case rRetry:
		if (keyEnter) {
			room_goto(rSuccess)
		}
		break;
	case rSuccess:
		if (keyEnter) {
			room_goto(rTitle)
		}
		break;
}