extends TextureRect

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
# Called when the node enters the scene tree for the first time.
func _ready():
	if (global.startingChemical == "Chemical"):
		get_node("Chemical").show()
		global.currentChemical = "Chemical"
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
