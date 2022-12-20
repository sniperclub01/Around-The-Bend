/// @description Insert description here
// You can write your code in this editor

draw_text_ext_color(Obj_Player.x, Obj_Player.y+64, "So... Tired", 1, 500, c_white, c_white, c_white, c_white, 1);
//global.maxPlayerSpeed = Obj_PlayerStats.playerSpeed;  (5)

draw_set_alpha(alpha);

draw_set_colour(c_black);

draw_rectangle(0,0,room_width,room_height,-1);

draw_set_alpha(1); //reset alpha value so it doesn't mess with other draw events