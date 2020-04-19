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
		
		//background progress bar
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
		var minimapWidth = room_width*SCALING_FACTOR
		var minimapHeight = room_height*SCALING_FACTOR
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

		//draw player and enemies on the minimap		
		DrawMinimapSquare(originX, originY, oLeaf, c_lime);
		DrawMinimapSquare(originX, originY, oFireball, c_orange);
		DrawMinimapSquare(originX, originY, oFire, c_red);	
		
		break;
	case rRetry:
		draw_text(50, 150, "[enter] to retry");
		
		//lol
		draw_text(50, 250, "Did you know?");
		draw_text(70, 270, string(global.n1) + " + " + string(global.n2) + " = " + string(global.n1 + global.n2))
		
		break;
	case rSuccess:
		draw_text(50, 50, "success");
		break;
}


//minimap

//48 x 96
//offset from corners, below bar (2x padding)
//lets see what that looks like





