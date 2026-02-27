extends TileMapLayer


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var gamestate = []
	for x in range(100):
		var row = []
		for y in range(100):
			var tile = randi() % 7
			if tile < 5:
				set_cell(Vector2i(x,y), 0, Vector2i(0,0))
			elif tile == 5:
				set_cell(Vector2i(x,y), 0, Vector2i(1,0))
			else: 
				set_cell(Vector2i(x,y), 0, Vector2i(2,0))
			row.append(tile)
		gamestate.append(row) 
