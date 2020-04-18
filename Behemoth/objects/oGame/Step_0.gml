/// @description Insert description here
// You can write your code in this editor


//check for relevant global keys

keyLeft  = keyboard_check(vk_left)  || keyboard_check(ord("A"));
keyRight = keyboard_check(vk_right) || keyboard_check(ord("D")); 
keyUp    = keyboard_check(vk_up)    || keyboard_check(ord("W")); 
keyDown  = keyboard_check(vk_down)  || keyboard_check(ord("S"));

keyEsc   = keyboard_check_pressed(vk_escape);
keyEnter = keyboard_check_pressed(vk_enter);
keySpace = keyboard_check_pressed(vk_space);

switch (room) {
	case rTitle:
		if (keyEnter) {
			//play da game
			room_goto(rGame)
		}
		break;
	case rGame:
		//if not paused, do this
		if (!global.paused) {
			var _newTime = get_timer()
			global.timeElapsed += _newTime - global.lastTime
			global.lastTime = _newTime
			global.progress = global.timeElapsed / GAME_LENGTH
			
			if (global.progress >= 1) {
				//game done
				Success();
			} else {
				//game in progress
				if (keySpace) {
					//just make a fireball for now if we hit space
					EnemyCreation();
				}
				
				EnemyMovement();
				EnemyAction();
			}
		}
		
		break;
	case rRetry:
		if (keyEnter) {
			//restart
			room_goto(rGame)
		}
		break;
	case rSuccess:
		if (keyEnter) {
			//add option for room or title
			room_goto(rTitle)
		}
		break;
}