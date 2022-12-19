/// @description Insert description here
// You can write your code in this editor

if (instance_exists(Obj_Player)) {
	if (Obj_Player.playerFloor == 4) {
		draw_text(room_width/2, room_height/2, "GAME OVER! YOU WIN!");	
	}
}

