///@desc find the nav mesh for this room
function findMesh()
{
	if !instance_exists(ctrl_navMesh) {
		showError("Trying to use nav mesh while none was present", false);
		return noone;
	}
	
	return instance_find(ctrl_navMesh, 0);
}

function fromPosToMesh_X(_x) {
	var _navMesh = findMesh();
	
	return floor(_x / _navMesh.gridWidth);
}

function fromPosToMesh_Y(_y) {
	var _navMesh = findMesh();
	
	return floor(_y / _navMesh.gridHeight);
}

function fromMeshToPos_X(_gridX) {
	var _navMesh = findMesh();
	
	return _gridX * _navMesh.gridWidth;
}

function fromMeshToPos_Y(_gridY) {
	var _navMesh = findMesh();
	
	return _gridY * _navMesh.gridHeight;
}

function fromMeshToIndex(_gridX, _gridY) {
	var _navMesh = findMesh();
	
	return _gridY * _navMesh.gridWidth + _gridX
}

function fromIndexToMesh_X(_index) {
	var _navMesh = findMesh();
	
	return _index % _navMesh.gridWidth;
}

function fromIndexToMesh_Y(_index) {
	var _navMesh = findMesh();
	
	return floor(_index / _navMesh.gridWidth);
}
