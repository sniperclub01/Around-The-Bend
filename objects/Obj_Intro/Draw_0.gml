/// @description Insert description here
// You can write your code in this editor
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
if (timer > 240) {
	draw_text(room_width / 2 , room_height / 2,		 "I feel so tired...");
}
else if (timer > 0 && timer < 240) {
		draw_text(room_width / 2 , room_height / 2,		 "*yawn* It's time to go home.");
}
else if (timer <= 0) {
	draw_text(room_width / 2 , room_height / 2-240,		 "Around The Bend");
	draw_text(room_width / 2 , room_height / 2-32,		 "WASD to Move");
	draw_text(room_width / 2, room_height / 2, "Left click to shoot");
	draw_text(room_width / 2, room_height / 2 + 64, "Press space to start");
}

