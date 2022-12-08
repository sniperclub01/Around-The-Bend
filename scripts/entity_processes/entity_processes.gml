function damage_entity(_tid, _sid, _damage, _time) {
	///@desc damage target, return status
	///@arg tid		real	target_id
	///@arg	sid		real	source_id
	///@arg damage	real	how much damage being dealt
	///@arg	time	real	how long to knock back the target
	
	with(_tid) {
		hp -= _damage;
		//var _dead = is_dead();
		path_end();
		
		// set knockback distance
		var _dis = 3;
		var _dir = point_direction(_sid.x, _sid.y, x, y);
		hsp += lengthdir_x(_dis, _dir);
		vsp += lengthdir_y(_dis, _dir);
		calc_path_delay = _time;
		alert = true;
		knockback_time = _time;
		//return _dead;
	}
}

/*function is_dead() {
	///#desc check if the instance running this is dead
	
	if state != states.DEAD {
		if (hp <= 0) {
			state = states.DEAD;
			hp = 0;
			image_index = 0;
			
			// set death sound
			switch(object_index) {
				default:
					// play sound
				break;
				case Obj_Player:
					// player sound
				break;
			}
			return true;
		}
	} 
	return true;
}*/