function scSpriteAnimate(){
   var _OldSprite = sprite_index;
   
   if (InputMagnitude != 0) {
       
       direction = InputDirection;
   
       if (direction == 0 && SprintKey) {
           
           sprite_index = RunSpriteR;
       } else if (SprintKey) {
           
           sprite_index = RunSpriteL;
       } else if (direction == 0) {
           
           sprite_index = WalkSpriteR;
       } else {
           
           sprite_index = WalkSpriteL;
       }
   } else {
       
       if (direction == 0) {
           
           sprite_index = IdleSpriteR;
       } else {
           
           sprite_index = IdleSpriteL;
       }
   }
   
   if (_OldSprite != sprite_index) {
       
       localFrame = 0;
   } 
  
}