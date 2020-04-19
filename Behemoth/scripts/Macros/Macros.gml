#macro FRAME_RATE 60
#macro RESOLUTION_W 400
#macro RESOLUTION_H 640

//for the minimap
#macro SCALING_FACTOR (1.0/8.0)

#macro PADDING 20
#macro BAR_WIDTH 30

//to avoid issues with current implementation
//keep walk_speed < TILE_SIZE

//including speed multipliers!!!
//so *3 maximum

//player attributes
#macro WALK_SPEED 1.5
#macro FRAMES_TO_HEAL 20

//2 minutes until complete
#macro GAME_LENGTH (2*60*1000000)

#macro MIN_HP 0.0
#macro MAX_HP 100.0
#macro TILE_SIZE 16

//TODO
//make sure it isnt possible to hold heal inf
//and prevent death...
			
//maybe damage, check, heal is the right order?
			
//depends how that last moment should play out
//depends heal dps vs enemy pain dps
//can determine how many fires/etc overwhelm the healing
