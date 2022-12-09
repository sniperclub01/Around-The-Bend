/// @description Insert description here
// You can write your code in this editor


	//audio_play_sound(Song_Whole, 10, true);	
if (Obj_Player.playerFloor == 1) {
	audio_play_sound(Song_Loop2, 10, true);	
}
if (Obj_Player.playerFloor == 2) {
	audio_play_sound(Song_Loop3, 10, false);
	audio_play_sound(Song_Whole, 10, true);	
}
if (Obj_Player.playerFloor == 3) {
	audio_play_sound(Song_Loop4, 10, true);	
}
