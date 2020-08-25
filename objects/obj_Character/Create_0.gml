input = obj_input;

//Initialize
currentState = "Idle";
moveTimer = 0;
animation_init();
xScale = 1;
yScale = 1;
defineFacing(true);
groundLevel = yPos;


// Status attributes
isGrounded = true;
isCrouching = false;
isInvulnerable = false;
isUnthrowable = false;
isProjectileInvul = false;
isFacingRight = true;
isLoop = true;

// Default character values
walkSpeed = 300;
jumpSpeed = 50;

// Character animation holders
anim_idle = -1
anim_walkF = -1
anim_walkB = -1

// Hurtbox
hurtbox = -1;

// Hitbox
hitbox = -1;

// Hit Status
hit = false;
hitStun = 0;
hitBy = -1;