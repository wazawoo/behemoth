/// @description Insert description here
// You can write your code in this editor

//insert per-room creation code here...

if (room == rGame) {
	global.paused = false
	global.lastTime = get_timer()
	global.timeElapsed = 0
	global.progress = 0
	global.collisionMap = layer_tilemap_get_id(layer_get_id("CollisionTiles"));
}