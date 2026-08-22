function scSpriteCollision()
{
    // -- Horizontal --
    if (SpeedH != 0) {
        
        var _newX = x + SpeedH;

        // -- Right --
        if (SpeedH > 0) {
            
            var _right = _newX + CollisionWidth - 1;
            var _topTile = floor(y / TILE_SIZE);
            var _bottomTile = floor((y + CollisionHeight - 1) / TILE_SIZE);
            var _col = false;

            for (var _ty = _topTile; _ty <= _bottomTile; _ty++) {
                
                var _checkY = _ty * TILE_SIZE + TILE_SIZE * 0.5;

                //solid tile check
                if (tilemap_get_at_pixel(CollisionMap, _right, _checkY) == 1) { 
                    
                    _col = true;
                    break;
                }
                //passable tile check
                /*else if (tilemap_get_at_pixel(CollisionMap, _right, _checkY) == 2) {
                    
                    break;
                }*/
            }

            if (_col) {
                
                var _tileX = floor(_right / TILE_SIZE);
                _newX = _tileX * TILE_SIZE - CollisionWidth;
                SpeedH = 0;
            }
        // -- Right End --
            
        } else {
            
            // -- Left --
            var _left = _newX;
            var _topTile = floor(y / TILE_SIZE);
            var _bottomTile = floor((y + CollisionHeight - 1) / TILE_SIZE);
            var _col = false;

            for (var _ty = _topTile; _ty <= _bottomTile; _ty++) {
                
                var _checkY = _ty * TILE_SIZE + TILE_SIZE * 0.5;

                //solid tile check
                if (tilemap_get_at_pixel(CollisionMap, _left, _checkY) == 1) {
                    
                    _col = true;
                    break;
                } //passable tile check
                /*else if (tilemap_get_at_pixel(CollisionMap, _left, _checkY) == 2) {
                    
                    break;
                }*/
            }
            
            if (_col) {
                
                var _tileX = floor(_left / TILE_SIZE);
                _newX = (_tileX + 1) * TILE_SIZE;
                SpeedH = 0;
            }
        }
            // -- Left End --
        
        x = _newX;
    }
    // -- Horizontal End --

    
    // -- Vertical --
    OnGround = false;

    if (SpeedV != 0) {
        
        var _newY = y + SpeedV;

        // -- Falling --
        if (SpeedV > 0) {
            
            var _bottom = _newY + CollisionHeight;
            var _leftTile = floor(x / TILE_SIZE);
            var _rightTile = floor((x + CollisionWidth - 1) / TILE_SIZE);
            var _col = false;

            for (var _tx = _leftTile; _tx <= _rightTile; _tx++) {
                
                var _checkX = _tx * TILE_SIZE + TILE_SIZE * 0.5;

                if (tilemap_get_at_pixel(CollisionMap, _checkX, _bottom) == 1) {
                    
                    _col = true;
                    break;
                }
            }

            if (_col) {
                
                var _tileY = floor(_bottom / TILE_SIZE);
                _newY = _tileY * TILE_SIZE - CollisionHeight;
                SpeedV = 0;
                OnGround = true;
            } 
        // -- Falling End --
            
        } else {
            
            // -- Jumping --
            var _top = _newY;
            var _leftTile = floor(x / TILE_SIZE);
            var _rightTile = floor((x + CollisionWidth - 1) / TILE_SIZE);
            var _col = false;

            for (var _tx = _leftTile; _tx <= _rightTile; _tx++) {
                
                var _checkX = _tx * TILE_SIZE + TILE_SIZE * 0.5;

                //solid tile check
                if (tilemap_get_at_pixel(CollisionMap, _checkX, _top) == 1)
                {
                    _col = true;
                    break;
                } //passable tile check
                /*else if (tilemap_get_at_pixel(CollisionMap, _checkX, _top) == 2)
                {
                    break;
                }*/
            }

            //ceiling collision
            if (_col) {
                
                var _tileY = floor(_top / TILE_SIZE);
                _newY = (_tileY + 1) * TILE_SIZE;
                SpeedV = 0;
            }
        }
            // -- Jumping End --
        
        y = _newY; 
    // -- Vertical End --
    }
}