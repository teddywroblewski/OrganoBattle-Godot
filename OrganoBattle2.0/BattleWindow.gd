extends TextureRect

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
# Called when the node enters the scene tree for the first time.
func _ready():
	get_node("TargetChemical").set_texture(load("res://2HMB-2M2B-DeH//1-01.png"))
	if (global.startingChemical == "3MB"):
		get_node("3MB").show()
		global.currentChemical = "3MB"
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
