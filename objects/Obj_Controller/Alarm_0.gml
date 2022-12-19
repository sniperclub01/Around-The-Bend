/// @description Insert description here
// You can write your code in this editor

up = false;
down = false;
left = false;
right = false;

if (ds_grid_get(mapGrid, 12, 12-1) == 1) {
	up = true;
}
if (ds_grid_get(mapGrid, 12, 12+1) == 1) {
	down = true;
}
if (ds_grid_get(mapGrid, 12+1, 12) == 1) {
	right = true;
}
if (ds_grid_get(mapGrid, 12-1, 12) == 1) {
	left = true;
}


if (right && !left && !down && !up) { // door right
	global.SpawnRoom = room_duplicate(Room_Spawn_Right);
}
if (right && left && !down && !up) { // door right, left
	global.SpawnRoom = room_duplicate(Room_Spawn_Right_Left);
}
if (right && !left && down && !up) { // door right, down
	global.SpawnRoom = room_duplicate(Room_Spawn_Right_Down);
}
if (right && left && down && !up) { // door right, left, down
	global.SpawnRoom = room_duplicate(Room_Spawn_NoUp);
}
if (left && !right && !down && !up) { // door left
	global.SpawnRoom = room_duplicate(Room_Spawn_Left);
}
if (left && !right && down && !up) { // door left, down
	global.SpawnRoom = room_duplicate(Room_Spawn_Left_Down);
}
if (left && !right && down && up) { // door left, down, up
	global.SpawnRoom = room_duplicate(Room_Spawn_NoRight);
}
if (up && !left && !right && !down) { // door up
	global.SpawnRoom = room_duplicate(Room_Spawn_Up);
}
if (up && !left && !right && down) { // door up, down
	global.SpawnRoom = room_duplicate(Room_Spawn_Up_Down);
}
if (up && left && !right && !down) { // door up, left
	global.SpawnRoom = room_duplicate(Room_Spawn_Up_Left);
}
if (up && !left && right && !down) { // door up, right
	global.SpawnRoom = room_duplicate(Room_Spawn_Up_Right);
}
if (up && !left && right && down) { // door up, right, down
	global.SpawnRoom = room_duplicate(Room_Spawn_NoLeft);
}
if (up && left && right && !down) { // door up, left, right
	global.SpawnRoom = room_duplicate(Room_Spawn_NoDown);
}
if (down && !left && !right && !up) { // door down
	global.SpawnRoom = room_duplicate(Room_Spawn_Down);
}
if (down && left && right && !up) { // door down, left, right
	global.SpawnRoom = room_duplicate(Room_Spawn_NoUp);
}
if (down && left && right && up) { // door 4-way
	global.SpawnRoom = room_duplicate(Room_Spawn_4Way);
}

room_set_persistent(global.SpawnRoom, true);
room_goto(global.SpawnRoom);

if (!instance_exists(Obj_PlayerStats)) {
	instance_create_layer(0, 0, "Instances", Obj_PlayerStats);
}
if (Obj_PlayerStats.playerFloor = 2) {
	instance_create_layer(0, 0, "Instances", Obj_ApplyShader);
	Obj_ApplyShader.dizzyTimer = 240;
	if audio_is_playing(Song_Loop2) {
		audio_stop_all();
		instance_destroy(Obj_Music);
	}
}
if (Obj_PlayerStats.playerFloor = 3) {
	if audio_is_playing(Song_Loop3) {
		audio_stop_all();
		instance_destroy(Obj_Music);
	}
}
if (!instance_exists(Obj_Player)) {
	instance_create_layer(480, 480, "Instances", Obj_Player);
}
if (!instance_exists(Obj_Camera)) {
	instance_create_layer(0, 0, "Instances", Obj_Camera);
}
if (!instance_exists(Obj_Music)) {
	instance_create_layer(0, 0, "Instances", Obj_Music);
}
if (!instance_exists(P_ParticleSystem)) {
	instance_create_layer(0, 0, "Instances", P_ParticleSystem);
}


ds_grid_set(roomGrid, 12, 12, global.SpawnRoom);