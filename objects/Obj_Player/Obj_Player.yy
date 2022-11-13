{
  "resourceType": "GMObject",
  "resourceVersion": "1.0",
  "name": "Obj_Player",
  "spriteId": {
    "name": "Spr_PlayerRight",
    "path": "sprites/Spr_PlayerRight/Spr_PlayerRight.yy",
  },
  "solid": true,
  "visible": true,
  "managed": true,
  "spriteMaskId": {
    "name": "Spr_PlayerIdle",
    "path": "sprites/Spr_PlayerIdle/Spr_PlayerIdle.yy",
  },
  "persistent": true,
  "parentObjectId": null,
  "physicsObject": false,
  "physicsSensor": false,
  "physicsShape": 1,
  "physicsGroup": 1,
  "physicsDensity": 0.5,
  "physicsRestitution": 0.1,
  "physicsLinearDamping": 0.1,
  "physicsAngularDamping": 0.1,
  "physicsFriction": 0.2,
  "physicsStartAwake": true,
  "physicsKinematic": false,
  "physicsShapePoints": [],
  "eventList": [
    {"resourceType":"GMEvent","resourceVersion":"1.0","name":"","isDnD":false,"eventNum":0,"eventType":0,"collisionObjectId":null,},
    {"resourceType":"GMEvent","resourceVersion":"1.0","name":"","isDnD":false,"eventNum":0,"eventType":3,"collisionObjectId":null,},
    {"resourceType":"GMEvent","resourceVersion":"1.0","name":"","isDnD":false,"eventNum":0,"eventType":4,"collisionObjectId":{"name":"Obj_Item_Damage_Up","path":"objects/Obj_Item_Damage_Up/Obj_Item_Damage_Up.yy",},},
    {"resourceType":"GMEvent","resourceVersion":"1.0","name":"","isDnD":false,"eventNum":0,"eventType":4,"collisionObjectId":{"name":"Obj_Enemy","path":"objects/Obj_Enemy/Obj_Enemy.yy",},},
    {"resourceType":"GMEvent","resourceVersion":"1.0","name":"","isDnD":false,"eventNum":2,"eventType":3,"collisionObjectId":null,},
    {"resourceType":"GMEvent","resourceVersion":"1.0","name":"","isDnD":false,"eventNum":0,"eventType":2,"collisionObjectId":null,},
    {"resourceType":"GMEvent","resourceVersion":"1.0","name":"","isDnD":false,"eventNum":0,"eventType":4,"collisionObjectId":{"name":"Obj_Health","path":"objects/Obj_Health/Obj_Health.yy",},},
    {"resourceType":"GMEvent","resourceVersion":"1.0","name":"","isDnD":false,"eventNum":0,"eventType":4,"collisionObjectId":{"name":"Obj_HealthUp","path":"objects/Obj_HealthUp/Obj_HealthUp.yy",},},
    {"resourceType":"GMEvent","resourceVersion":"1.0","name":"","isDnD":false,"eventNum":0,"eventType":4,"collisionObjectId":{"name":"Obj_DoorParent","path":"objects/Obj_DoorParent/Obj_DoorParent.yy",},},
  ],
  "properties": [],
  "overriddenProperties": [],
  "parent": {
    "name": "Player",
    "path": "folders/Entity/Player.yy",
  },
}