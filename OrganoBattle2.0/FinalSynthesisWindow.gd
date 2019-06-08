extends TextureRect

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var fightWindow
# Called when the node enters the scene tree for the first time.
func _ready():
	#fightWindow = load("res://FightingWindow.tscn")
	get_node("ChemicalMade").set_texture(load("res://Chemicals/" + str(global.targetChemical) + ".png"))
	global.isFinalChemical = true
	if (global.currentChemical == global.targetChemical) :
		get_node("SuccessPage").show()
		print("sucess")
		global.enemyHealth -= 10
	else :
		print("failed")
		get_node("FailurePage").show()

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_ContinueButton_pressed():
	print("pressed")
	global.isComputerTurn = true
	get_tree().change_scene("res://FightingWindow.tscn")
	
