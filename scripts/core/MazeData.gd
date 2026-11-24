extends RefCounted

var rows: int = 0
var columns: int = 0
var cells: Array = []

func createGrid(newRows: int,newColumns:int) -> void:
	if newRows <= 0 or newColumns <= 0:
		push_error("Dimensoes de grelha invalidas!")
		return
	
	rows = newRows
	columns = newColumns
	
	for y in range(rows):
		var rowCells: Array = []
		
		for x in range(columns):
			var cell = {
				"x": x,
				"y": y,
				"visited": false,
				"north": true,
				"south": true,
				"east": true,
				"west": true
			}
			rowCells.append(cell)
		cells.append(rowCells)

func isInside(y: int,x: int) -> bool:
	return (y>=0 and y<rows) and (x>=0 and x<columns)

func getCell(y: int, x: int) -> Dictionary:
	if not isInside(y, x):
		return {}
	return cells[y][x]
	
func resetVisited() -> void:
	for row in cells:
		for cell in row:
			cell["visited"] = false
