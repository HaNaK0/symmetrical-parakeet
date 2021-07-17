/// @description Setup turn based player
event_inherited()

currentPath = array_create(10, 0)

for (i = 0; i < 5; i++) {
	currentPath[i] = fromMeshToIndex(gridX + i, gridY)
}

for (i = 0; i < 5; i++) {
	currentPath[5 + i] = fromMeshToIndex(gridX + 4, gridY + i)
}
