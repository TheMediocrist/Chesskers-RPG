extends TileMap

func _ready() -> void:
	for x in range(100):
		for y in range(100):
			var tile = randi() % 7
			if tile < 5:
				set_cell(0, Vector2i(x,y), 0, Vector2i(0,0))
			elif tile == 5:
				set_cell(0, Vector2i(x,y), 0, Vector2i(1,0))
			else: 
				set_cell(0, Vector2i(x,y), 0, Vector2i(2,0))
	
