extends RefCounted

func generate(mazeData,newRows: int,newColumns: int) -> void:
	mazeData.createGrid(newRows,newColumns)
	
	var directions: Array = [
		{"dy": -1,"dx": 0,"wall": "north" ,"oposite": "south"},
		{"dy": 1,"dx": 0,"wall": "south" ,"oposite": "north"},
		{"dy": 0,"dx": 1,"wall": "east" ,"oposite": "west"},
		{"dy": 0,"dx": -1,"wall": "west" ,"oposite": "east"}
	]
