extends TextureRect

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Reaction1_toggled(button_pressed):
	if (button_pressed) :
		global.acidAttacks.remove(0)
	else:
		global.acidAttacks.append("Chemical0")

func _on_Reaction2_toggled(button_pressed):
	if (button_pressed) :
		global.acidAttacks.remove(1)
	else:
		global.acidAttacks.append("Chemical1")

func _on_Reaction3_toggled(button_pressed):
	if (button_pressed) :
		global.acidAttacks.remove(2)
	else:
		global.acidAttacks.append("Chemical2")

func _on_BackButton_pressed():
	get_tree().change_scene("res://MainMenu.tscn")
