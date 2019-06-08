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

func _on_BackButton_pressed():
	get_tree().change_scene("res://MainMenu.tscn")


func _on_Oxymercuration_toggled(button_pressed):
	if (button_pressed) :
		global.basicAttack.remove("2-iodo-3-methyl-butane")
		global.basicAttack.remove("2-methyl-butane")
		global.basicAttack.remove("2,3-dibromo-2-methyl-butane")
		global.flammableAttack.remove("2-methyl-2-butanol")
		global.flammableAttack.remove("2-bromo-3-methyl-butane")
		global.flammableAttack.remove("2-chloro-3-methyl-butane")
	else :
		global.basicAttack.add("2-iodo-3-methyl-butane")
		global.basicAttack.add("2-methyl-butane")
		global.basicAttack.add("2,3-dibromo-2-methyl-butane")
		global.flammableAttack.add("2-methyl-2-butanol")
		global.flammableAttack.add("2-bromo-3-methyl-butane")
		global.flammableAttack.add("2-chloro-3-methyl-butane")


func _on_Ozonolysis_toggled(button_pressed):
	if (button_pressed) :
		global.corrosiveAttack.remove("formaldehyde_2-methylpropanal")
	else :
		global.corrosiveAttack.add("formaldehyde_2-methylpropanal")

func _on_Hydroboration_toggled(button_pressed):
	if (button_pressed) :
		global.flammableAttack.remove("1-chloro-3-methyl-butane")
		global.oralToxicityAttack.remove("1-iodo-3-methyl-butane")
	else :
		global.flammableAttack.add("1-chloro-3-methyl-butane")
		global.oralToxicityAttack.add("1-iodo-3-methyl-butane")

func _on_FRA_toggled(button_pressed):
	if (button_pressed) :
		global.basicAttack.remove("1-propoxy-3-methyl-butane")
		global.oralToxicityAttack.remove("2-methyl-hexane")
		global.oralToxicityAttack.remove("5-methyl-hexanol")
	else :
		global.basicAttack.add("1-propoxy-3-methyl-butane")
		global.oralToxicityAttack.add("2-methyl-hexane")
		global.oralToxicityAttack.add("5-methyl-hexanol")

func _on_Dehydration_toggled(button_pressed):
	if (button_pressed) :
		global.basicAttack.remove("2-methyl-butane")
		global.basicAttack.remove("2,3-dibromo-2-methyl-butane")
		global.flammableAttack.remove("2-methyl-2-butanol")
	else :
		global.basicAttack.add("2-methyl-butane")
		global.basicAttack.add("2,3-dibromo-2-methyl-butane")
		global.flammableAttack.add("2-methyl-2-butanol")


func _on_PBr3_toggled(button_pressed):
	if (button_pressed) :
		global.flammableAttack.remove("2-bromo-3-methyl-butane")
	else :
		global.flammableAttack.add("2-bromo-3-methyl-butane")


func _on_HHalide_toggled(button_pressed):
	if (button_pressed) :
		global.oralToxicityAttack.remove("1-iodo-3-methyl-butane")
		global.basicAttack.remove("2-iodo-3-methyl-butane")
	else :
		global.oralToxicityAttack.add("1-iodo-3-methyl-butane")
		global.basicAttack.add("2-iodo-3-methyl-butane")

func _on_SOCl2_toggled(button_pressed):
	if (button_pressed) :
		global.flammableAttack.remove("2-chloro-3-methyl-butane")
		global.flammableAttack.remove("1-chloro-3-methyl-butane")
	else :
		global.flammableAttack.add("2-chloro-3-methyl-butane")
		global.flammableAttack.add("1-chloro-3-methyl-butane")
	

func _on_E2_toggled(button_pressed):
	pass


func _on_Hydration_toggled(button_pressed):
	if (button_pressed) :
		global.flammableAttack.remove("2-methyl-2-butanol")
	else :
		global.flammableAttack.add("2-methyl-2-butanol")


func _on_Hydrogenation_toggled(button_pressed):
	if (button_pressed) :
		global.basicAttack.remove("2-methyl-2-butane")
	else :
		global.basicAttack.add("2-methyl-2-butane")


func _on_Halogenation_toggled(button_pressed):
	if (button_pressed) :
		global.basicAttack.remove("2,4-dibromo-2-methyl-butane")
	else :
		global.basicAttack.add("2,4-dibromo-2-methyl-butane")


func _on_Sn2_toggled(button_pressed):
	if (button_pressed) :
		global.basicAttack.remove("1-propoxy-3-methyl-butane")
	else :
		global.basicAttack.add("1-propoxy-3-methyl-butane")


func _on_EpoxAdd_toggled(button_pressed):
	if (button_pressed) :
		global.oralToxicityAttack.remove("5-methyl-hexanol")
	else :
		global.oralToxicityAttack.add("5-methyl-hexanol")


func _on_AHAdd_toggled(button_pressed):
	if (button_pressed) :
		global.oralToxicityAttack.remove("2-methyl-hexane")
	else :
		global.oralToxicityAttack.add("2-methyl-hexane")
