/// @description Insert description here
// You can write your code in this editor

damage = global.playerDamage;
range = global.playerRange;
owner_id = noone;
knockback_time = 5;

function bullet_die() {
	speed = 0;
	instance_destroy();
}