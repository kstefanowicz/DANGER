input = obj_input;

//Initialize
currentState = "Idle";
moveTimer = 0;
animation_init();
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