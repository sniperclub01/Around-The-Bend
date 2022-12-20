/// @description Insert description here
// You can write your code in this editor

if (dizzyTimer > 240) {	
	draw_text_ext_color(Obj_Player.x, Obj_Player.y+64, "What the hell happened to this place?", 1, 500, c_white, c_white, c_white, c_white, 1);
}
if (dizzyTimer < 240 && dizzyTimer > 0) {	
	draw_text_ext_color(Obj_Player.x, Obj_Player.y+64, "I feel dizzy... I should get home.", 1, 500, c_white, c_white, c_white, c_white, 1);
}
