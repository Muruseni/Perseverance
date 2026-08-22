// -- Input --
LeftKey = keyboard_check(ord("A"));
RightKey = keyboard_check(ord("D"));
UpKey = keyboard_check(ord("W"));
JumpKey = keyboard_check(vk_space);
UseKey = mouse_check_button(mb_left);
InteractKey = mouse_check_button(mb_right);
SprintKey = keyboard_check(vk_control);
ShiftKey = keyboard_check(vk_shift);
keyInventory = keyboard_check(ord("E"));

InputDirection = point_direction(0, 0, RightKey - LeftKey, 0);
InputMagnitude = RightKey - LeftKey;
// -- Input End --


// -- Movement --
if (SprintKey) {
    
    SpeedH = InputMagnitude * RunSpeed;
} else {
    
    SpeedH = InputMagnitude * WalkSpeed;
}

//jump
if (JumpKey && OnGround) {
    
    SpeedV = -JumpSpeed;
    OnGround = false;
}

//gravity
SpeedV += Gravity;
if (SpeedV > MaxFallSpeed) {
        
    SpeedV = MaxFallSpeed;
}

scSpriteCollision();
// -- Movement End --

// -- Animate --
scSpriteAnimate();
// -- Animate End --