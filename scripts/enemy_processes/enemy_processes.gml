function check_for_player() {
	///@desc check for player to chase
	
	var _dis = distance_to_object(Obj_Player);
	
	// Is the player alive?
	if (global.currentPlayerHealth > 0) {
	
		// Should we chase?
		if ((_dis <= alert_dis) || alert) and _dis > attack_dis {
			//Alert the enemy
			alert = true;
		
			// Calculate the path when the timer is done, reset it, path.
			if (calc_path_timer-- <= 0) {
				//reset timer
				calc_path_timer = calc_path_delay;
			
				// can a path to the player be made?
				var _found_player = mp_grid_path(global.mp_grid, path, x, y, Obj_Player.x, Obj_Player.y, choose(0, 1));
				// start the path if we can reach him
				if (_found_player) {
					path_start(path, move_spd, path_action_stop, false);
				}
			}
		}
		else {
			// are we close enough to attack?
			if (_dis <= attack_dis) {
				path_end();
			}
		}
	}
}