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

InputDirection = point_direction(0,0,RightKey-LeftKey, 0);
InputMagnitude = (RightKey - LeftKey != 0);
// -- Input --


// -- Movement --
hSpeed = lengthdir_x(InputMagnitude * WalkSpeed, InputDirection);

x += hSpeed;
// -- Movement --


// -- Animate --
var _OldSprite = sprite_index

if (InputMagnitude != 0){
    direction = InputDirection;
    
    if (InputDirection = 1){
        sprite_index = WalkSpriteR;
    } else{
        sprite_index = WalkSpriteL;    
    }
} else {
    
    if (InputDirection = 1){
        sprite_index = IdleSpriteR;
    } else{
        sprite_index = IdleSpriteL;    
    }
}

if (_OldSprite != sprite_index){
    localFrame = 0;
}
// -- Animate --