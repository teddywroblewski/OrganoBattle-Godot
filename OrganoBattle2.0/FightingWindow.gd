extends TextureRect

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var attack_popup
var defense_popup
# Called when the node enters the scene tree for the first time.
func _ready():
	pass# Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_AttackPopupMenu_id_pressed(ID):
	global.startingChemical = ID
	global.targetChemical = ID
	get_tree().change_scene("res://BattleWindow.tscn")
	print(ID)

func _on_DefensePopupMenu_id_pressed(ID):
	get_tree().change_scene("res://BattleWindow.tscn")


func _on_AttackButton_toggled(button_pressed):
	if(button_pressed):
		attack_popup = get_node("AttackPopupMenu")
		attack_popup.show()
	else:
		attack_popup = get_node("AttackPopupMenu")
		attack_popup.hide()
		
func _on_DefenseButton_toggled(button_pressed):
	if(button_pressed):
		defense_popup = get_node("DefensePopupMenu")
		defense_popup.show()
	else:
		defense_popup = get_node("DefensePopupMenu")
		defense_popup.hide()
