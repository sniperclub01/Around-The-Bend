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
	up = true;
}
if (ds_grid_get(Obj_Controller.mapGrid, player_X, player_Y+1) == 2) {
	down = true;
}
if (ds_grid_get(Obj_Controller.mapGrid, player_X+1, player_Y) == 2) {
	right = true;
}
if (ds_grid_get(Obj_Controller.mapGrid, player_X-1, player_Y) == 2) {
	left = true;
}


if (ds_grid_get(Obj_Controller.roomGrid, player_X, player_Y) != 0) // If there's a room already there
{
	Obj_Controller.newRoom = ds_grid_get(Obj_Controller.roomGrid, player_X, player_Y);
	room_goto(Obj_Controller.newRoom);
}
else {
	if (right && !left && !down && !up) { // door right
		if (ds_grid_get(Obj_Controller.mapGrid, player_X, player_Y) == 2) {
			Obj_Controller.newRoom = room_duplicate(Room_End_Right);	
		}
		else {
			Obj_Controller.newRoom = room_duplicate(Room_Right);	
		}
	}
	if (right && left && !down && !up) { // door right, left
		if (ds_grid_get(Obj_Controller.mapGrid, player_X, player_Y) == 2) {
			Obj_Controller.newRoom = room_duplicate(Room_End_Right_Left);	
		}
		else {
			Obj_Controller.newRoom = room_duplicate(Room_Right_Left);	
		}
	}
	if (right && !left && down && !up) { // door right, down
		if (ds_grid_get(Obj_Controller.mapGrid, player_X, player_Y) == 2) {
			Obj_Controller.newRoom = room_duplicate(Room_End_Right_Down);	
		}
		else {
			Obj_Controller.newRoom = room_duplicate(Room_Right_Down);	
		}
		
	}
	if (right && left && down && !up) { // door right, left, down
		if (ds_grid_get(Obj_Controller.mapGrid, player_X, player_Y) == 2) {
			Obj_Controller.newRoom = room_duplicate(Room_End_3NoUp);	
		}
		else {
			Obj_Controller.newRoom = room_duplicate(Room_3NoUp);
		}
	}
	if (left && !right && !down && !up) { // door left
		if (ds_grid_get(Obj_Controller.mapGrid, player_X, player_Y) == 2) {
			Obj_Controller.newRoom = room_duplicate(Room_End_Left);	
		}
		else {
			Obj_Controller.newRoom = room_duplicate(Room_Left);
		}
	}
	if (left && !right && down && !up) { // door left, down
		if (ds_grid_get(Obj_Controller.mapGrid, player_X, player_Y) == 2) {
			Obj_Controller.newRoom = room_duplicate(Room_End_Left_Down);	
		}
		else {
			Obj_Controller.newRoom = room_duplicate(Room_Left_Down);
		}
	}
	if (left && !right && down && up) { // door left, down, up
		if (ds_grid_get(Obj_Controller.mapGrid, player_X, player_Y) == 2) {
			Obj_Controller.newRoom = room_duplicate(Room_End_3NoRight);	
		}
		else {
			Obj_Controller.newRoom = room_duplicate(Room_3NoRight);
		}
	}
	if (up && !left && !right && !down) { // door up
		if (ds_grid_get(Obj_Controller.mapGrid, player_X, player_Y) == 2) {
			Obj_Controller.newRoom = room_duplicate(Room_End_Up);	
		}
		else {
			Obj_Controller.newRoom = room_duplicate(Room_Up);
		}
	}
	if (up && !left && !right && down) { // door up, down
		if (ds_grid_get(Obj_Controller.mapGrid, player_X, player_Y) == 2) {
			Obj_Controller.newRoom = room_duplicate(Room_End_Up_Down);	
		}
		else {
			Obj_Controller.newRoom = room_duplicate(Room_Up_Down);
		}
	}
	if (up && !left && right && down) { // door up, right, down
		if (ds_grid_get(Obj_Controller.mapGrid, player_X, player_Y) == 2) {
			Obj_Controller.newRoom = room_duplicate(Room_End_3NoLeft);	
		}
		else {
			Obj_Controller.newRoom = room_duplicate(Room_3NoLeft);
		}
	}
	if (up && left && !right && !down) { // door up, left
		if (ds_grid_get(Obj_Controller.mapGrid, player_X, player_Y) == 2) {
			Obj_Controller.newRoom = room_duplicate(Room_End_Up_Left);	
		}
		else {
			Obj_Controller.newRoom = room_duplicate(Room_Up_Left);
		}
	}
	if (up && !left && right && !down) { // door up, right
		if (ds_grid_get(Obj_Controller.mapGrid, player_X, player_Y) == 2) {
			Obj_Controller.newRoom = room_duplicate(Room_End_Up_Right);	
		}
		else {
			Obj_Controller.newRoom = room_duplicate(Room_Up_Right);
		}
	}
	if (up && left && right && !down) { // door up, left, right
		if (ds_grid_get(Obj_Controller.mapGrid, player_X, player_Y) == 2) {
			Obj_Controller.newRoom = room_duplicate(Room_End_3NoDown);	
		}
		else {
			Obj_Controller.newRoom = room_duplicate(Room_3NoDown);
		}
	}
	if (down && !left && !right && !up) { // door down
		if (ds_grid_get(Obj_Controller.mapGrid, player_X, player_Y) == 2) {
			Obj_Controller.newRoom = room_duplicate(Room_End_Down);	
		}
		else {
			Obj_Controller.newRoom = room_duplicate(Room_Down);
		}
	}
	if (down && left && right && !up) { // door down, left, right
		if (ds_grid_get(Obj_Controller.mapGrid, player_X, player_Y) == 2) {
			Obj_Controller.newRoom = room_duplicate(Room_End_3NoUp);	
		}
		else {
			Obj_Controller.newRoom = room_duplicate(Room_3NoUp);
		}
	}
	if (down && left && right && up) { // door 4-way
		if (ds_grid_get(Obj_Controller.mapGrid, player_X, player_Y) == 2) {
			Obj_Controller.newRoom = room_duplicate(Room_End_4Way);	
		}
		else {
			Obj_Controller.newRoom = room_duplicate(Room_4Way);
		}
	}
}

ds_grid_set(Obj_Controller.roomGrid, player_X, player_Y, Obj_Controller.newRoom);
room_set_persistent(Obj_Controller.newRoom, true);
room_goto(Obj_Controller.newRoom);