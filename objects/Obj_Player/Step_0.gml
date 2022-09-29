/// @description Character movement based on Initializer
// You can write your code in this editor

#region MOVEMENT
	var xdir = keyboard_check(ord("D")) - keyboard_check(ord("A"));
	var ydir = keyboard_check(ord("S")) - keyboard_check(ord("W"));

	if (xdir != 0 or ydir != 0) {
	
		var dir = point_direction(0, 0, xdir, ydir);
	
		var movedSuccessfully = false;
		for (var i = 0; i <= 80; i += 10) {
			for (var n = -1; n <= 1; n += 2) {
			
				var modifiedDir = (n*i) + dir;
			
				var xTarget = x + lengthdir_x(maxSpeed, modifiedDir);
				var yTarget = y + lengthdir_y(maxSpeed, modifiedDir);
			
				if (place_free(xTarget, yTarget)) {
					x = xTarget;
					y = yTarget;
					movedSucessfully = true;
					break;
				}
			}
		
			if (movedSucessfully) {
				break;
			}
		}
	}
#endregion


var isMoving = xdir != 0 || ydir != 0 ? true : false; // Movement check
var spriteFacing = "";
var spriteAction;
#region STATE MACHINE

	if (isMoving) {
		#region FACING STATE DECISION
			switch(dir) {
				case 90:
					state_facing = STATE_FACING.up;
				break;
				case 270:
					state_facing = STATE_FACING.down;
				break;
				case 180:
					state_facing = STATE_FACING.left;
				break;
				case 0:
					state_facing = STATE_FACING.right;
				break;
			}
		#endregion
	}
	
	#region FACING STATE
		switch(state_facing) {
			case STATE_FACING.up:
				spriteFacing = "Up";
			break;
			case STATE_FACING.down:
				spriteFacing = "Down";
			break;
			case STATE_FACING.left:
				spriteFacing = "Left";
			break;
			case STATE_FACING.right:
				spriteFacing = "Right";
			break;
		}
	#endregion
	
	#region ACTION STATE
	
		if (isMoving) {
			state_action = STATE_ACTION.walking;
		}
		else {
			state_action = STATE_ACTION.idle;
		}
	
		switch (state_action) {
			case STATE_ACTION.idle:
				spriteAction = "Idle";
			break;
			case STATE_ACTION.walking:
				spriteAction = "Walk";
			break;
		}
	#endregion
#endregion

#region ANIMATION
	var sprite;
	if(isMoving) {
		sprite = asset_get_index("Spr_Player" + spriteFacing); // If moving set sprite to the direction
	}
	else {
		sprite = asset_get_index("Spr_PlayerIdle"); // If not, it's idle.
	}
	//sprite = asset_get_index("Spr_Player" + sprite_facing);
	
	if (sprite != noone) {
		sprite_index = sprite;
	}
#endregion