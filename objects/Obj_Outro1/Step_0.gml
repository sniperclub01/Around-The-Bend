/// @description Insert description here
// You can write your code in this editor


if (alpha < 1) {

   alpha += 1/fadeTime; // alpha will reach 1 at set fade time

   if (alpha >= 1) {
	   room_goto(Room_Outro);
	   instance_destroy();
   }

}
