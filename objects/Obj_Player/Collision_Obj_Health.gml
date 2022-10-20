/// @description Insert description here
// You can write your code in this editor

if (global.currentPlayerHealth >= global.maxPlayerHealth) {
	instance_destroy(other);
}
if (global.currentPlayerHealth < global.maxPlayerHealth) {
	global.currentPlayerHealth += 1;
}
