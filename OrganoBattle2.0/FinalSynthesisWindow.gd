extends TextureRect

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	global.isFinalChemical = true
	if (global.currentChemical == global.targetChemical) :
		 print("sucess")
		 global.enemyHealth -= 10
	else :
		print("failed")

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_TextureButton_pressed():
	global.isComputerTurn = true
	get_tree().change_scene("res://FightingWindow.tscn")
