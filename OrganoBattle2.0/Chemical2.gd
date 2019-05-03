extends TextureRect

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	# get_tree().get_root().get_node("BattleWindow").isFinal = true

	pass
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Option_1_pressed():
	global.currentChemical = null
	get_tree().change_scene("res://FinalSynthesisWindow.tscn")
