extends TextureRect

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
# Called when the node enters the scene tree for the first time.
func _ready():
	print("In ready")
	get_node("TargetChemical").set_texture(load("res://Chemicals/" + str(global.targetChemical) + ".png"))
	if (global.startingChemical == "3MB"):
		get_node("3MB").show()
		global.currentChemical = "3MB"
		global.startingChemical = "reload"
	elif (global.startingChemical == "reload" && global.nextChemical != null) :
		get_node(str(global.nextChemical)).show()
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass





func _on_3MBoh_visibility_changed():
	print("changed")
