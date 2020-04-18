//inputs:
//x
//y
//hurtKey: bool
//healKey: bool

var _x = argument0
var _y = argument1
var _hurtKey = argument2
var _healKey = argument3

var _instance = instance_position(_x, _y, oSection)

if (_instance != noone) {
	
	if (_hurtKey && _instance.hp > MIN_HP) {
		_instance.hp--;
	}
	
	if (_healKey && _instance.hp < 100.0) {
		_instance.hp++;
	}
	
	//if multiple collide, we will get a random one
	switch (_instance.object_index) {
		case oHead: 
			show_debug_message("head"); 
			break;
		case oTrunk: 
			show_debug_message("trunk");
			break;
		case oLeftArm: 
			show_debug_message("left");
			break;
		case oRightArm: 
			show_debug_message("right");
			break;
		default: 
			show_debug_message("default");
	}
	show_debug_message(string(_instance.hp));
}