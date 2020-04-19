/// @description Insert description here
// You can write your code in this editor


//defaults
draw_set_colour(c_white);
draw_set_halign(fa_left);
draw_set_valign(fa_top);

switch (room) {
	case rTitle:
		draw_text(50, 50, "title");
		break;
	case rGame:
		
		
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
		var originX = RESOLUTION_W - minimapWidth + 10+16;
		var originY = BAR_WIDTH+38;
		
		draw_set_color($484848)
		draw_set_alpha(0.5)
		draw_roundrect(
			originX - 16, 
			originY + 24 - 38,
			originX + minimapWidth - 32 - 16,
			originY + minimapHeight - 96 - 38, 
			0
		);
		
		//draw sections
		draw_set_alpha(0.8)
		with (oSection) {
			if (hp > 0) {
				switch (object_index) {
					case oTrunk:
						draw_sprite(sTrunkSmall, 0, originX, originY)
						break;
					case oHead:
						draw_sprite(sHeadSmall, 0, originX, originY)
						break;
					case oRightArm:
						draw_sprite(sRightArmSmall, 0, originX, originY)
						break;
					case oLeftArm:
						draw_sprite(sLeftArmSmall, 0, originX, originY)
						break;
					case oRightLeg:
						draw_sprite(sRightLegSmall, 0, originX, originY)
						break;
					case oLeftLeg:
						draw_sprite(sLeftLegSmall, 0, originX, originY)
						break;
				}
			}
		}
		
		//draw player and enemies on the minimap		
		DrawMinimapSquare(originX-32, originY-76, oLeaf, c_lime);
		DrawMinimapSquare(originX-32, originY-76, oFireball, c_orange);
		DrawMinimapSquare(originX-32, originY-76, oFire, c_red);
		
		//draw health above that
		with (oSection) {
			//change color based on hp
			if (hp >= 75) {
				draw_set_color(c_lime)
			} else if (hp > 25 && hp < 75) {
				draw_set_color(c_yellow)
			} else {
				draw_set_color(c_red)
			}
			
			draw_set_halign(fa_center)
			draw_set_valign(fa_center)
			
			switch (object_index) {
				case oTrunk:
					draw_text(originX + 40, originY + 80 - 10, string(int64(hp)))
					break;
				case oHead:
					draw_text(originX + 40, originY + 15, string(int64(hp)))
					break;
				case oRightArm:
					draw_text(originX + 60, originY + 50, string(int64(hp)))
					break;
				case oLeftArm:
					draw_text(originX + 20, originY + 50, string(int64(hp)))
					break;
				case oRightLeg:
					draw_text(originX + 60, originY + 130, string(int64(hp)))
					break;
				case oLeftLeg:
					draw_text(originX + 20, originY + 130, string(int64(hp)))
					break;
			}
		}	
		
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
