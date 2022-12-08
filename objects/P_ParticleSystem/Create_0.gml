/// @description Insert description here
// You can write your code in this editor

particle_system = part_system_create();

particleType_DestroyBullet = part_type_create();

part_type_sprite(particleType_DestroyBullet, Spr_TestParticle, 0, 0, 0);
part_type_size(particleType_DestroyBullet, 1, 1, -.01, 0);
part_type_life(particleType_DestroyBullet, 100, 100);
part_type_orientation(particleType_DestroyBullet, 0, 359, 0.1, 0, 1);