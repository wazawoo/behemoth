

var originX = argument0
var originY = argument1
var object = argument2
var color = argument3

draw_set_colour(color);
with (object) {
	var _x1 = originX + SCALING_FACTOR*(x - TILE_SIZE/2);
	var _y1 = originY + SCALING_FACTOR*(y - TILE_SIZE);
			
	draw_rectangle(
		_x1,
		_y1,
		_x1 + 16*SCALING_FACTOR,
		_y1 + 16*SCALING_FACTOR,
		0
	);
}