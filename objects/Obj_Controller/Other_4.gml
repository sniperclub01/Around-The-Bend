/// @description Insert description here
// You can write your code in this editor
if (room != Room_Start) {
	
	if (newRoom = global.SpawnRoom) {
		if (playerSpawn == "right") {
			Obj_Player.x = 880;
			Obj_Player.y = 480;
		}
		if (playerSpawn == "left") {
			Obj_Player.x = 80;
			Obj_Player.y = 480;
		}
		if (playerSpawn == "down") {
			Obj_Player.x = 480;
			Obj_Player.y = 880;
		}
		if (playerSpawn == "up") {
			Obj_Player.x = 480;
			Obj_Player.y = 80;
		}	
	}
	else {
		if (playerSpawn == "right") {
			Obj_Player.x = 1264;
			Obj_Player.y = 672;
		}
		if (playerSpawn == "left") {
			Obj_Player.x = 80;
			Obj_Player.y = 672;
		}
		if (playerSpawn == "down") {
			Obj_Player.x = 672;
			Obj_Player.y = 1264;
		}
		if (playerSpawn == "up") {
			Obj_Player.x = 672;
			Obj_Player.y = 80;
		}
	}
}