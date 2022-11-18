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


if (ds_grid_get(roomGrid, player_X, player_Y) != 0)
	{
		newRoom = ds_grid_get(roomGrid, player_X, player_Y);
		room_goto(newRoom);
	}
else {
	if (right && !left && !down && !up) { // door right
		newRoom = room_duplicate(Room_Right);
	}
	if (right && left && !down && !up) { // door right, left
		newRoom = room_duplicate(Room_Right_Left);
	}
	if (right && !left && down && !up) { // door right, down
		newRoom = room_duplicate(Room_Right_Down);
	}
	if (right && left && down && !up) { // door right, left, down
		newRoom = room_duplicate(Room_3NoUp);
	}
	if (left && !right && !down && !up) { // door left
		newRoom = room_duplicate(Room_Left);
	}
	if (left && !right && down && !up) { // door left, down
		newRoom = room_duplicate(Room_Left_Down);
	}
	if (left && !right && down && up) { // door left, down, up
		newRoom = room_duplicate(Room_3NoRight);
	}
	if (up && !left && !right && !down) { // door up
		newRoom = room_duplicate(Room_Up);
	}
	if (up && !left && !right && down) { // door up, down
		newRoom = room_duplicate(Room_Up_Down);
	}
	if (up && left && !right && !down) { // door up, left
		newRoom = room_duplicate(Room_Up_Left);
	}
	if (up && !left && right && !down) { // door up, right
		newRoom = room_duplicate(Room_Up_Right);
	}
	if (up && left && right && !down) { // door up, left, right
		newRoom = room_duplicate(Room_3NoDown);
	}
	if (down && !left && !right && !up) { // door down
		newRoom = room_duplicate(Room_Down);
	}
	if (down && left && right && !up) { // door down, left, right
		newRoom = room_duplicate(Room_3NoUp);
	}
	if (down && left && right && up) { // door 4-way
		newRoom = room_duplicate(Room_4Way);
	}
	
	// End room handling
		if (rightend && !leftend && !downend && !upend) { // door right
		newRoom = room_duplicate(Room_End_Right);
	}
	if (rightend && leftend && !downend && !upend) { // door right, left
		newRoom = room_duplicate(Room_End_Right_Left);
	}
	if (rightend && !leftend && downend && !upend) { // door right, down
		newRoom = room_duplicate(Room_End_Right_Down);
	}
	if (rightend && leftend && downend && !upend) { // door right, left, down
		newRoom = room_duplicate(Room_End_3NoUp);
	}
	if (leftend && !rightend && !downend && !upend) { // door left
		newRoom = room_duplicate(Room_End_Left);
	}
	if (leftend && !rightend && downend && !upend) { // door left, down
		newRoom = room_duplicate(Room_End_Left_Down);
	}
	if (leftend && !rightend && downend && upend) { // door left, down, up
		newRoom = room_duplicate(Room_End_3NoRight);
	}
	if (upend && !leftend && !rightend && !downend) { // door up
		newRoom = room_duplicate(Room_End_Up);
	}
	if (upend && !leftend && !rightend && downend) { // door up, down
		newRoom = room_duplicate(Room_End_Up_Down);
	}
	if (upend && leftend && !rightend && !downend) { // door up, left
		newRoom = room_duplicate(Room_End_Up_Left);
	}
	if (upend && !leftend && rightend && !downend) { // door up, right
		newRoom = room_duplicate(Room_End_Up_Right);
	}
	if (upend && leftend && rightend && !downend) { // door up, left, right
		newRoom = room_duplicate(Room_End_3NoDown);
	}
	if (downend && !leftend && !rightend && !upend) { // door down
		newRoom = room_duplicate(Room_End_Down);
	}
	if (downend && leftend && rightend && !upend) { // door down, left, right
		newRoom = room_duplicate(Room_End_3NoUp);
	}
	if (downend && leftend && rightend && upend) { // door 4-way
		newRoom = room_duplicate(Room_End_4Way);
	}
}
ds_grid_set(roomGrid, player_X, player_Y, newRoom);

room_set_persistent(newRoom, true);
room_goto(newRoom);