var _obj = argument0

var _x = 30
var _y = 0
var _text = ""
var _hpText = ""

if (_obj.hp > 0) {
	_hpText = string(_obj.hp)
} else {
	_hpText = "dead"
}

if (_obj == oHead) {
	_y = 30
	_text = "head: " + _hpText
} else if (_obj == oTrunk) {
	_y = 50
	_text = "trunk: " + _hpText
} else if (_obj == oLeftArm) {
	_y = 70
	_text = "left arm: " + _hpText
} else if (_obj == oRightArm) {
	_y = 90
	_text = "right arm: " + _hpText
}


draw_text(_x, _y, _text);