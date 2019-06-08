extends TextureRect

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var attack_popup
var defense_popup
# Called when the node enters the scene tree for the first time.
func _ready():
	
	get_node("PlayerPowerBar").value = global.power
	
	if (global.health <= 0) :
		global.isGameOver = true
		global.reset()
		get_tree().change_scene("MainMenu.tscn")
	if (global.isComputerTurn) :
		get_node("AttackButton").hide()
		get_node("DefenseButton").hide()
		var t = Timer.new()
		t.set_wait_time(3)
		t.set_one_shot(true)
		self.add_child(t)
		t.start()
		yield(t, "timeout")
		t.queue_free()
		global.health -= 10
		global.isComputerTurn = false
		get_node("AttackButton").show()
		get_node("DefenseButton").show()
	else :
		get_node("AttackButton").show()
		get_node("DefenseButton").show()
	
	get_node("PlayerHealthBar").value = global.health

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_AttackPopupMenu_id_pressed(ID):
	if (ID == 0) :
		global.startingChemical = "3MB"
		global.targetChemical = global.flammableAttack[randi()%global.flammableAttack.size()]
		get_tree().change_scene("res://BattleWindow.tscn")
		print(ID)
	elif (ID == 1) :
		global.startingChemical = "3MBoh"
		global.targetChemical = "Chemical 3"
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
