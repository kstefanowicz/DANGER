input = obj_input;

//Initialize
currentState = "Idle";
moveTimer = 0;
animation_init();
xScale = 2;
yScale = 2;
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