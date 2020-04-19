/// @description Insert description here
// You can write your code in this editor


//default to white
draw_set_colour(c_white);

switch (room) {
	case rTitle:
		draw_text(50, 50, "title");
		break;
	case rGame:
		with (oSection) {
			script_execute(DrawStatus, object_index);
		}
		//background bar
		draw_set_colour(c_black);
		draw_roundrect(
			PADDING, 
			PADDING, 
			RESOLUTION_W - PADDING, 
			PADDING + BAR_WIDTH, 
			0
		);
		
		//progress bar
		draw_set_colour(c_lime);
		draw_roundrect(
			PADDING + 2, 
			PADDING + 2,
			lerp(PADDING+2, RESOLUTION_W - PADDING - 2, global.progress),
			PADDING + BAR_WIDTH - 2, 
			0
		);
		
		
		//draw minimap
		
		
		//origin and scaling factor
		//make these constants
		//testing for now
		
		//this needs to scale perfectly...
		//just choose the width and height
		//pixels need to divide...
		//make it divisible by 16
		//
		
		///6 = 96
		
		
		//why is it scaling so bad
		//just make the width even
		
		//96/16 = 6
		//
		
		//so 1 pixel for every 6
		
		var scalingFactor = 1.0/8.0
		var minimapWidth = room_width*scalingFactor
		var minimapHeight = room_height*scalingFactor
		
		var originX = RESOLUTION_W - minimapWidth - PADDING;
		var originY = PADDING * 2 + BAR_WIDTH;
		
		draw_set_colour(c_dkgray);
		draw_roundrect(
			originX, 
			originY,
			originX + minimapWidth,
			originY + minimapHeight, 
			0
		);
		
		draw_set_colour(c_lime);
		
		
		//ok we are 16x16
		//our room size is 320/640
		//so it is 3/4 as big
		//that means 12x12 pixels to represent us
		//lets try that
		//draw_rectangle(
		
		
			
		
		
		//);
		
		//go by bbox?
		//yes
		//do that lol
		
		//we need it better
		//1/8???
		//ort 1/4
		
		
		var _x1 = originX + scalingFactor*(oLeaf.x - TILE_SIZE/2);
		var _y1 = originY + scalingFactor*(oLeaf.y - TILE_SIZE);
		
		draw_rectangle(
			_x1,
			_y1,
			_x1 + 16*scalingFactor,
			_y1 + 16*scalingFactor,
			0
		);
		
		
		
		
		
		break;
	case rRetry:
		draw_text(50, 50, "retry");
		break;
	case rSuccess:
		draw_text(50, 50, "success");
		break;
}


//minimap

//48 x 96
//offset from corners, below bar (2x padding)
//lets see what that looks like





