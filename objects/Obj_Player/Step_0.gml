/// @description Character movement based on Initializer
// You can write your code in this editor

#region MOVEMENT

var xdir = keyboard_check(ord("D")) - keyboard_check(ord("A"));
var ydir = keyboard_check(ord("S")) - keyboard_check(ord("W"));

if (xdir != 0 or ydir != 0) {
	
	var dir = point_direction(0, 0, xdir, ydir);
	
	//var movedSuccessfully = false;
	for (var i = 0; i <= 80; i += 10) {
		for (var n = -1; n <= 1; n += 2) {
			
			var modifiedDir = (n*i) + dir;
			
			var xTarget = x + lengthdir_x(global.maxPlayerSpeed, modifiedDir);
			var yTarget = y + lengthdir_y(global.maxPlayerSpeed, modifiedDir);
			
						
			/*if (place_free(xTarget, yTarget)) {
				x = xTarget;
				y = yTarget;
				movedSucessfully = true;
				break;
			}*/
			if (place_free(xTarget, y)) {
				x = xTarget;
				//y = yTarget;
				movedSucessfully = true;
				//break;
			}
			if (place_free(x, yTarget)) {
				//x = xTarget;
				y = yTarget;
				movedSucessfully = true;
				//break;
			}
		}
		
		if (movedSucessfully) {
			break;
		}
	}
}
#endregion

#region ITEMHANDLING
// Health
while (place_meeting(x, y, Obj_Health)) {
	with(instance_place(x, y, Obj_Health)) {
		if (global.currentPlayerHealth < global.maxPlayerHealth) {
			global.currentPlayerHealth += 1;
			instance_destroy();
		}
		else {
			return;
		}
	}
}
// Health up
while (place_meeting(x, y, Obj_HealthUp)) {
	with(instance_place(x, y, Obj_HealthUp)) {
		if (global.maxPlayerHealth < 10) {
			instance_destroy();
			global.maxPlayerHealth += 1;
		}
		else {
			return;
		}
	}
}
// Damage up
while (place_meeting(x, y, Obj_Item_Damage_Up)) {
	with(instance_place(x, y, Obj_Item_Damage_Up)) {
		global.playerDamage += 1;
		instance_destroy();
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
	
	#region WEAPON STATE
		
		aim_dir = point_direction(x, y, mouse_x, mouse_y);
		player_weapon.image_angle = aim_dir;
		
		// Rotate the gun based on aiming direction
		if ((aim_dir >= 90) && (aim_dir <= 270)) {
			player_weapon.image_yscale=-1;
		}
		else {
			player_weapon.image_yscale=1;	
		}
		
		// Check for mouse input
		if (mouse_check_button(mb_left)) {
			if (can_fire) {
				can_fire = false;
				alarm[0] = fire_rate;
				
				var _dir = point_direction(x, y, mouse_x, mouse_y);
				var _inst = instance_create_layer(x, y, "Bullets", Obj_Bullet);
				with(_inst) {
					speed = other.bullet_speed;	
					direction = _dir;
					image_angle = _dir;
					owner_id = other;
				}
			}
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

#region END STATE
	if(global.currentPlayerHealth <= 0) {
		instance_create_layer(0, 0, "Instances", Obj_EndScreen);
		instance_destroy();
	}
#endregion