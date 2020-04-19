/// @description Insert description here
// You can write your code in this editor

//check for hold
keyLeft  = keyboard_check(vk_left)  || keyboard_check(ord("A"));
keyRight = keyboard_check(vk_right) || keyboard_check(ord("D")); 
keyUp    = keyboard_check(vk_up)    || keyboard_check(ord("W")); 
keyDown  = keyboard_check(vk_down)  || keyboard_check(ord("S"));
keyHeal  = keyboard_check(ord("R"));

//make sure to remove this
keyHurt  = keyboard_check(ord("F"));

//check for press
keyEsc   = keyboard_check_pressed(vk_escape);
keyEnter = keyboard_check_pressed(vk_enter);
keySplash = keyboard_check_pressed(vk_space);
//maybe shift for attack?

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
				PlayerMovement();
				PlayerAction();
				
				if (global.stepCount % FRAME_RATE == 0) {
					//create an enemy every second
					//can change this rate as the game progresses
					EnemyCreation();
				}
				EnemyMovement();
				EnemyAction();
				
				
				CheckSection();
			}
		}
		
		global.stepCount++
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