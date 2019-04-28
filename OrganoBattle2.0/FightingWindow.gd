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
	get_tree().change_scene("res://BattleWindow.tscn")


func _on_DefenseButton_pressed():
	defense_popup = get_node("DefensePopupMenu")
	defense_popup.show()


func _on_DefensePopupMenu_id_pressed(ID):
	get_tree().change_scene("res://BattleWindow.tscn")


func _on_AttackButton_toggled(button_pressed):
	if(button_pressed):
		print("attack button")
		attack_popup = get_node("AttackPopupMenu")
		attack_popup.show()
	else:
		print("else")
		attack_popup = get_node("AttackPopupMenu")
		attack_popup.hide()
