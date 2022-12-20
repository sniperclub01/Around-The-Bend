/// @description Insert description here
// You can write your code in this editor

if (instance_exists(Obj_ApplyShader)) {
	instance_destroy(Obj_ApplyShader);
}
global.maxPlayerSpeed = Obj_PlayerStats.playerSpeed;
audio_stop_all();
audio_play_sound(Song_Whole, 10, true);

