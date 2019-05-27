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
		global.acidAttacks.erase("1-bromo-3-methyl-butane")
		
	else:
		global.acidAttacks.append("1-bromo-3-methyl-butane")
	

func _on_Reaction2_toggled(button_pressed):
	if (button_pressed) :
		global.acidAttacks.erase("1-chloro-3-methyl-butane")
	else:
		global.acidAttacks.append("1-chloro-3-methyl-butane")

func _on_Reaction3_toggled(button_pressed):
	if (button_pressed) :
		global.acidAttacks.erase("1-iodo-3-methyl-butane")
	else:
		global.acidAttacks.append("1-iodo-3-methyl-butane")

func _on_BackButton_pressed():
	get_tree().change_scene("res://MainMenu.tscn")
