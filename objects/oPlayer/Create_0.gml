
CollisionMap = layer_tilemap_get_id(layer_get_id("Col"));

//movement
vSpeed = 0;
hSpeed = 0;

WalkSpeed = 0.8;
RunSpeed = 1.2;

//gravity
Gravity = 0.2;
MaxFallSpeed = 6;

//jump
JumpSpeed = 3;
OnGround = false;

//collision box
CollisionWidth = 15;
CollisionHeight = 43;

//stats
/*
Hp = 10;
Defence = 0;
Energy = 0;
Weight = 0;
*/

//sprites
WalkSpriteL = sPlayer_walk_left;
WalkSpriteR = sPlayer_walk_right;

RunSpriteL = sPlayer_run_left;
RunSpriteR = sPlayer_run_right;

IdleSpriteL = sPlayer_idle_left;
IdleSpriteR = sPlayer_idle_right;

HitspriteL = sPlayer_hit_left;
HitspriteR = sPlayer_hit_right;