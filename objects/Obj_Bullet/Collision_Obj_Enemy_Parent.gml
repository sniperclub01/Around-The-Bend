/// @description Insert description here
// You can write your code in this editor

if (other.object_index == Obj_Basic_Enemy) {
	if (other.hp > 0) {
		damage_entity(other, owner_id, damage, knockback_time);	 //target, source, damage, knockback time
		bullet_die();
	}
}
if (other.object_index == Obj_Basic_Enemy_2) {
	if (other.hp > 0) {
		damage_entity(other, owner_id, damage, knockback_time);	
		bullet_die();
	}
}
if (other.object_index == Obj_Basic_Enemy_3) {
	if (other.hp > 0) {
		damage_entity(other, owner_id, damage, knockback_time);	
		bullet_die();
	}
}
if (other.object_index == Obj_Basic_Enemy_4) {
	if (other.hp > 0) {
		damage_entity(other, owner_id, damage, knockback_time);	
		bullet_die();
	}
}


