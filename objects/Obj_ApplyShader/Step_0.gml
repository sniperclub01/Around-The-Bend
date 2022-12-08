/// @description Insert description here
// You can write your code in this editor

if (dizzyTimer > 0) {	
	dizzyTimer--;
	draw_text(Obj_Player.x - 60, Obj_Player.y + 64, "I feel dizzy... I should get home.");
}