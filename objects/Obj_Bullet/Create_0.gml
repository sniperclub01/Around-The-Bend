/// @description Insert description here
// You can write your code in this editor

damage = global.playerDamage;
range = global.playerRange;
owner_id = Obj_Player;
knockback_time = global.knockBackTime;

function bullet_die() {
	speed = 0;
	instance_destroy();
}