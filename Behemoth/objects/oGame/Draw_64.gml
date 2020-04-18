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
		
		break;
	case rRetry:
		draw_text(50, 50, "retry");
		break;
	case rSuccess:
		draw_text(50, 50, "success");
		break;
}
