/// @description Insert description here
// You can write your code in this editor

//get key inputs
keyLeft  = keyboard_check(vk_left)  || keyboard_check(ord("A"));
keyRight = keyboard_check(vk_right) || keyboard_check(ord("D")); 
keyUp    = keyboard_check(vk_up)    || keyboard_check(ord("W")); 
keyDown  = keyboard_check(vk_down)  || keyboard_check(ord("S"));

//calculate direction and magnitude
inputDirection = point_direction(0,0,keyRight-keyLeft,keyDown-keyUp);
inputMagnitude = (keyRight - keyLeft != 0) || (keyDown - keyUp != 0);

//calculate actual walking speed
hSpeed = lengthdir_x(inputMagnitude * walkSpeed, inputDirection);
vSpeed = lengthdir_y(inputMagnitude * walkSpeed, inputDirection);

//check for collision and move
Collision();