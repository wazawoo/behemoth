/// @description Insert description here
// You can write your code in this editor


//this should be in script so we have one place where we check keys

//get key inputs
keyLeft  = keyboard_check(vk_left)  || keyboard_check(ord("A"));
keyRight = keyboard_check(vk_right) || keyboard_check(ord("D")); 
keyUp    = keyboard_check(vk_up)    || keyboard_check(ord("W")); 
keyDown  = keyboard_check(vk_down)  || keyboard_check(ord("S"));
keyHurt  = keyboard_check(ord("F"));
keyHeal  = keyboard_check(ord("R"));
keySpace = keyboard_check_pressed(vk_space);

//calculate direction and magnitude
inputDirection = point_direction(0,0,keyRight-keyLeft,keyDown-keyUp);
inputMagnitude = (keyRight - keyLeft != 0) || (keyDown - keyUp != 0);

//calculate actual walking speed
hSpeed = lengthdir_x(inputMagnitude * walkSpeed, inputDirection);
vSpeed = lengthdir_y(inputMagnitude * walkSpeed, inputDirection);

//do this after collision and movement
depth = -bbox_bottom

//check for actions on this section
script_execute(CheckSection, x, y, keyHurt, keyHeal);

//check for collision and move
Collision();

//check for splash
if (keySpace) {
	//create splash
	//splash is alive while it animates
	//placing at center for now
	//make sure to have correct center for oSplash too
	instance_create_layer(x, y, "Leaf", oSplash)
	
	
	//if splash collides with fire, fire destroys iteslf
	
	//make correct bounding box for splash
}

