/// @description Insert description here
// You can write your code in this editor


if (instance_exists(Obj_EndScreen)) {
	if (keyboard_check(vk_escape)) {
		game_end();
	}
	else if keyboard_check(ord("R")) {
		game_restart();
	}
}
