with (oSection) {
	//check on health
	if (hp <= MIN_HP) {
		//this section died!
		//do something
		if (object_index == oTrunk) {
			TreeDied();
		} else {
			//hide!
			audio_play_sound(soOuch, 10, false)
			image_index = 1
		}	
	}
	if (hp > MAX_HP) {
		hp = MAX_HP
	}
}