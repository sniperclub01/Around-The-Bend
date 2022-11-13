/// @description Insert description here
// You can write your code in this editor

if (other.sprite_index == Spr_Door_Left   ){ player_X--; playerSpawn = "right"}
if (other.sprite_index == Spr_Door_Right  ){ player_X++; playerSpawn = "left"}
if (other.sprite_index == Spr_Door_Top    ){ player_Y--; playerSpawn = "down"}
if (other.sprite_index == Spr_Door_Bottom ){ player_Y++; playerSpawn = "up"}


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
}
ds_grid_set(roomGrid, player_X, player_Y, newRoom);
room_goto(newRoom);