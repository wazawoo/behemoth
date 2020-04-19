with (oSection) {
	//check on health
	if (hp <= MIN_HP) {
		//this section died!
		//do something
		if (object_index == oTrunk) {
			TreeDied();
		}	
	}
	if (hp > MAX_HP) {
		hp = MAX_HP
	}
}