/// @description Insert description here
// You can write your code in this editor
if (other.sprite_index == Spr_Door_Left   ){ player_X--; Obj_Controller.playerSpawn = "right"}
if (other.sprite_index == Spr_Door_Right  ){ player_X++; Obj_Controller.playerSpawn = "left"}
if (other.sprite_index == Spr_Door_Top    ){ player_Y--; Obj_Controller.playerSpawn = "down"}
if (other.sprite_index == Spr_Door_Bottom ){ player_Y++; Obj_Controller.playerSpawn = "up"}


// Map generation logic
up = false;
down = false;
left = false;
right = false;
upend = false;
downend = false;
rightend = false;
leftend = false;

if (ds_grid_get(Obj_Controller.mapGrid, player_X, player_Y-1) == 1) {
	up = true;
}
if (ds_grid_get(Obj_Controller.mapGrid, player_X, player_Y+1) == 1) {
	down = true;
}
if (ds_grid_get(Obj_Controller.mapGrid, player_X+1, player_Y) == 1) {
	right = true;
}
if (ds_grid_get(Obj_Controller.mapGrid, player_X-1, player_Y) == 1) {
	left = true;
}
if (ds_grid_get(Obj_Controller.mapGrid, player_X, player_Y-1) == 2) {
	upend = true;
}
if (ds_grid_get(Obj_Controller.mapGrid, player_X, player_Y+1) == 2) {
	downend = true;
}
if (ds_grid_get(Obj_Controller.mapGrid, player_X+1, player_Y) == 2) {
	rightend = true;
}
if (ds_grid_get(Obj_Controller.mapGrid, player_X-1, player_Y) == 2) {
	leftend = true;
}


if (ds_grid_get(Obj_Controller.roomGrid, player_X, player_Y) != 0)
	{
		Obj_Controller.newRoom = ds_grid_get(Obj_Controller.roomGrid, player_X, player_Y);
		room_goto(Obj_Controller.newRoom);
	}
else{
	// End room handling
	if (rightend && !leftend && !downend && !upend) { // door right
		Obj_Controller.newRoom = room_duplicate(Room_End_Right);
	}
	else if (rightend && leftend && !downend && !upend) { // door right, left
		Obj_Controller.newRoom = room_duplicate(Room_End_Right_Left);
	}
	else if (rightend && !leftend && downend && !upend) { // door right, down
		Obj_Controller.newRoom = room_duplicate(Room_End_Right_Down);
	}
	else if (rightend && leftend && downend && !upend) { // door right, left, down
		Obj_Controller.newRoom = room_duplicate(Room_End_3NoUp);
	}
	else if (leftend && !rightend && !downend && !upend) { // door left
		Obj_Controller.newRoom = room_duplicate(Room_End_Left);
	}
	else if (leftend && !rightend && downend && !upend) { // door left, down
		Obj_Controller.newRoom = room_duplicate(Room_End_Left_Down);
	}
	else if (leftend && !rightend && downend && upend) { // door left, down, up
		Obj_Controller.newRoom = room_duplicate(Room_End_3NoRight);
	}
	else if (upend && !leftend && !rightend && !downend) { // door up
		Obj_Controller.newRoom = room_duplicate(Room_End_Up);
	}
	else if (upend && !leftend && !rightend && downend) { // door up, down
		Obj_Controller.newRoom = room_duplicate(Room_End_Up_Down);
	}
	else if (upend && !leftend && rightend && downend) { // door up, right, down
		Obj_Controller.newRoom = room_duplicate(Room_End_3NoLeft);	
	}
	else if (upend && leftend && !rightend && !downend) { // door up, left
		Obj_Controller.newRoom = room_duplicate(Room_End_Up_Left);
	}
	else if (upend && !leftend && rightend && !downend) { // door up, right
		Obj_Controller.newRoom = room_duplicate(Room_End_Up_Right);
	}
	else if (upend && leftend && rightend && !downend) { // door up, left, right
		Obj_Controller.newRoom = room_duplicate(Room_End_3NoDown);
	}
	else if (downend && !leftend && !rightend && !upend) { // door down
		Obj_Controller.newRoom = room_duplicate(Room_End_Down);
	}
	else if (downend && leftend && rightend && !upend) { // door down, left, right
		Obj_Controller.newRoom = room_duplicate(Room_End_3NoUp);
	}
	/*else if (downend && leftend && rightend && upend) { // door 4-way
		Obj_Controller.newRoom = room_duplicate(Room_End_4Way);
	}*/
	
	// Normal door handling
	else {
		if (right && !left && !down && !up) { // door right
			Obj_Controller.newRoom = room_duplicate(Room_Right);
		}
		if (right && left && !down && !up) { // door right, left
			Obj_Controller.newRoom = room_duplicate(Room_Right_Left);
		}
		if (right && !left && down && !up) { // door right, down
			Obj_Controller.newRoom = room_duplicate(Room_Right_Down);
		}
		if (right && left && down && !up) { // door right, left, down
			Obj_Controller.newRoom = room_duplicate(Room_3NoUp);
		}
		if (left && !right && !down && !up) { // door left
			Obj_Controller.newRoom = room_duplicate(Room_Left);
		}
		if (left && !right && down && !up) { // door left, down
			Obj_Controller.newRoom = room_duplicate(Room_Left_Down);
		}
		if (left && !right && down && up) { // door left, down, up
			Obj_Controller.newRoom = room_duplicate(Room_3NoRight);
		}
		if (up && !left && !right && !down) { // door up
			Obj_Controller.newRoom = room_duplicate(Room_Up);
		}
		if (up && !left && !right && down) { // door up, down
			Obj_Controller.newRoom = room_duplicate(Room_Up_Down);
		}
		if (up && !left && right && down) { // door up, right, down
			Obj_Controller.newRoom = room_duplicate(Room_3NoLeft);	
		}
		if (up && left && !right && !down) { // door up, left
			Obj_Controller.newRoom = room_duplicate(Room_Up_Left);
		}
		if (up && !left && right && !down) { // door up, right
			Obj_Controller.newRoom = room_duplicate(Room_Up_Right);
		}
		if (up && left && right && !down) { // door up, left, right
			Obj_Controller.newRoom = room_duplicate(Room_3NoDown);
		}
		if (down && !left && !right && !up) { // door down
			Obj_Controller.newRoom = room_duplicate(Room_Down);
		}
		if (down && left && right && !up) { // door down, left, right
			Obj_Controller.newRoom = room_duplicate(Room_3NoUp);
		}
		if (down && left && right && up) { // door 4-way
			Obj_Controller.newRoom = room_duplicate(Room_4Way);
		}
	}
}
ds_grid_set(Obj_Controller.roomGrid, player_X, player_Y, Obj_Controller.newRoom);

room_set_persistent(Obj_Controller.newRoom, true);
room_goto(Obj_Controller.newRoom);