extends TextureRect

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var parent
# Called when the node enters the scene tree for the first time.
func _ready():
	parent = get_tree().get_root().get_node("BattleWindow")
	get_node("Target").set_texture(load("res://Chemicals/" + str(global.targetChemical) + ".png"))

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_ContinueButton_pressed():
	self.hide()
	parent.get_node("TargetChemical").show()
	parent.get_node("TargetText").show()
	parent.get_node("TargetChemical").set_texture(load("res://TargetMolecules/" + str(global.targetChemical) + "-1.png"))
	if (global.startingChemical == "3MB"):
		parent.get_node("3MB").show()
		global.currentChemical = "3MB"
		global.startingChemical = "reload"
