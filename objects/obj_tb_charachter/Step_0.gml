/// @description Movement

if pathIndex < array_length(currentPath) {
	
	var _nextX = fromMeshToPos_X(fromIndexToMesh_X(currentPath[pathIndex]));
	var _nextY = fromMeshToPos_Y(fromIndexToMesh_Y(currentPath[pathIndex]));
	
	var _previousX = fromMeshToPos_X(gridX);
	var _previousY = fromMeshToPos_Y(gridY);
	
	//convert to steps
	var _stepSpeed = (1 / moveSpeed) * game_get_speed(gamespeed_fps);
	
	x = lerp(_previousX, _nextX, stepCounter / _stepSpeed);
	y = lerp(_previousY, _nextY, stepCounter / _stepSpeed);
	
	if stepCounter >= _stepSpeed {
		stepCounter = 0;
		gridX = fromIndexToMesh_X(currentPath[pathIndex]);
		gridY = fromIndexToMesh_Y(currentPath[pathIndex]);
		pathIndex += 1;
	}
	stepCounter += 1;
}
