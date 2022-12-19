/// @description Insert description here
// You can write your code in this editor


	//audio_play_sound(Song_Whole, 10, true);	
if (Obj_PlayerStats.playerFloor == 1) {
	audio_play_sound(Song_Loop2, 10, true);	
}
else if (Obj_PlayerStats.playerFloor == 2) {
	audio_play_sound(Song_Loop3, 10, true);
	//audio_play_sound(Song_Whole, 10, true);	
}
else {
	audio_play_sound(Song_Whole, 10, true);	
}

