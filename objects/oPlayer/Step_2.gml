// -- Camera --
var _camera = view_camera[0];
var _cameraWidth = camera_get_view_width(_camera);
var _cameraHeight = camera_get_view_height(_camera);

var _playerCenterX = x + CollisionWidth * 0.5;
var _playerCenterY = y + CollisionHeight * 0.5;

camera_set_view_pos(_camera, _playerCenterX - _cameraWidth * 0.5, _playerCenterY - _cameraHeight * 0.5);
// -- Camera End --