/// @description Test messages

var _path = array_create(10, 0)

for (i = 0; i < 5; i++) {
	_path[i] = fromMeshToIndex(gridX + i, gridY)
}

for (i = 0; i < 5; i++) {
	_path[5 + i] = fromMeshToIndex(gridX + 4, gridY + i)
}

postMaster_addMessage(Channels.Movement, new MoveMessage(_path))
