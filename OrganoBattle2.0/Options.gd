extends TextureRect

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
# Called when the node enters the scene tree for the first time.
var fireToRemove = []
var oralToRemove = []
var basicToRemove = []
var corToRemove = []

func _ready():
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func _on_BackButton_pressed():
	for chem in fireToRemove:
		global.flammableAttack.remove(chem)
	for chem in oralToRemove:
		global.oralToxicityAttack.remove(chem)
	for chem in basicToRemove:
		global.basicAttack.remove(chem)
	for chem in corToRemove:
		global.corrosiveAttack.remove(chem)
	
	if (!checkViability()) :
		get_node("NotEnoughReactionError").show()
	else :
		get_tree().change_scene("res://MainMenu.tscn")

func _on_DisableBackground_toggled(button_pressed):
	if (button_pressed) :
		global.disableBackground = true
	else :
		global.disableBackground = false

func _on_Oxymercuration_toggled(button_pressed):
	if (button_pressed) :
		get_node("ScrollContainer/HBoxContainer/ReactionButtons/OxM/OxmCB").set_texture(load("res://OptionsScreen/checkClicked.png"))
		basicToRemove.append("2-iodo-3-methyl-butane")
		basicToRemove.append("2-methylbutane")
		basicToRemove.append("2,3-dibromo-2-methylbutane")
		fireToRemove.append("2-methyl-2-butanol")
		fireToRemove.append("2-bromo-3-methyl-butane")
		fireToRemove.append("2-chloro-3-methyl-butane")
	else :
		get_node("ScrollContainer/HBoxContainer/ReactionButtons/OxM/OxmCB").set_texture(load("res://OptionsScreen/checkBox.png"))
		basicToRemove.remove("2-iodo-3-methyl-butane")
		basicToRemove.remove("2-methylbutane")
		basicToRemove.remove("2,3-dibromo-2-methylbutane")
		fireToRemove.remove("2-methyl-2-butanol")
		fireToRemove.remove("2-bromo-3-methyl-butane")
		fireToRemove.remove("2-chloro-3-methyl-butane")


func _on_Ozonolysis_toggled(button_pressed):
	if (button_pressed) :
		get_node("ScrollContainer/HBoxContainer/ReactionButtons/Ozo/OzoCB").set_texture(load("res://OptionsScreen/checkClicked.png"))
		corToRemove.append("formaldehyde_2-methylpropanal")
	else :
		get_node("ScrollContainer/HBoxContainer/ReactionButtons/Ozo/OzoCB").set_texture(load("res://OptionsScreen/checkBox.png"))
		corToRemove.remove("formaldehyde_2-methylpropanal")

func _on_Hydroboration_toggled(button_pressed):
	if (button_pressed) :
		get_node("ScrollContainer/HBoxContainer/ReactionButtons/HBor/HborCB").set_texture(load("res://OptionsScreen/checkClicked.png"))
		fireToRemove.append("1-chloro-3-methyl-butane")
		oralToRemove.append("1-iodo-3-methyl-butane")
	else :
		get_node("ScrollContainer/HBoxContainer/ReactionButtons/HBor/HborCB").set_texture(load("res://OptionsScreen/checkBox.png"))
		fireToRemove.remove("1-chloro-3-methyl-butane")
		oralToRemove.remove("1-iodo-3-methyl-butane")

func _on_FRA_toggled(button_pressed):
	if (button_pressed) :
		get_node("ScrollContainer/HBoxContainer/ReactionButtons/FRA/FRACB").set_texture(load("res://OptionsScreen/checkClicked.png"))
		basicToRemove.append("1-propoxy-3-methyl-butane")
		oralToRemove.append("2-methyl-hexane")
		oralToRemove.append("5-methyl-hexanol")
	else :
		get_node("ScrollContainer/HBoxContainer/ReactionButtons/FRA/FRACB").set_texture(load("res://OptionsScreen/checkBox.png"))
		basicToRemove.remove("1-propoxy-3-methyl-butane")
		oralToRemove.remove("2-methyl-hexane")
		oralToRemove.remove("5-methyl-hexanol")

func _on_Dehydration_toggled(button_pressed):
	if (button_pressed) :
		get_node("ScrollContainer/HBoxContainer/ReactionButtons/DeH/DeHCB").set_texture(load("res://OptionsScreen/checkClicked.png"))
		basicToRemove.append("2-methylbutane")
		basicToRemove.append("2,3-dibromo-2-methylbutane")
		fireToRemove.append("2-methyl-2-butanol")
	else :
		get_node("ScrollContainer/HBoxContainer/ReactionButtons/DeH/DeHCB").set_texture(load("res://OptionsScreen/checkBox.png"))
		basicToRemove.remove("2-methylbutane")
		basicToRemove.remove("2,3-dibromo-2-methylbutane")
		fireToRemove.remove("2-methyl-2-butanol")


func _on_PBr3_toggled(button_pressed):
	if (button_pressed) :
		get_node("ScrollContainer/HBoxContainer/ReactionButtons/PBr3/PBr3CB").set_texture(load("res://OptionsScreen/checkClicked.png"))
		fireToRemove.append("2-bromo-3-methyl-butane")
	else :
		get_node("ScrollContainer/HBoxContainer/ReactionButtons/PBr3/PBr3CB").set_texture(load("res://OptionsScreen/checkBox.png"))
		fireToRemove.remove("2-bromo-3-methyl-butane")


func _on_HHalide_toggled(button_pressed):
	if (button_pressed) :
		get_node("ScrollContainer/HBoxContainer/ReactionButtons/HHalide/HHalideCB").set_texture(load("res://OptionsScreen/checkClicked.png"))
		oralToRemove.append("1-iodo-3-methyl-butane")
		basicToRemove.append("2-iodo-3-methyl-butane")
	else :
		get_node("ScrollContainer/HBoxContainer/ReactionButtons/HHalide/HHalideCB").set_texture(load("res://OptionsScreen/checkBox.png"))
		oralToRemove.remove("1-iodo-3-methyl-butane")
		basicToRemove.remove("2-iodo-3-methyl-butane")

func _on_SOCl2_toggled(button_pressed):
	if (button_pressed) :
		get_node("ScrollContainer/HBoxContainer/ReactionButtons/SOCl2/SOCl2CB").set_texture(load("res://OptionsScreen/checkClicked.png"))
		fireToRemove.append("2-chloro-3-methyl-butane")
		fireToRemove.append("1-chloro-3-methyl-butane")
	else :
		get_node("ScrollContainer/HBoxContainer/ReactionButtons/SOCl2/SOCl2CB").set_texture(load("res://OptionsScreen/checkBox.png"))
		fireToRemove.remove("2-chloro-3-methyl-butane")
		fireToRemove.remove("1-chloro-3-methyl-butane")
	

func _on_E2_toggled(button_pressed):
	if (button_pressed) :
		get_node("ScrollContainer/HBoxContainer/ReactionButtons/E2/E2CB").set_texture(load("res://OptionsScreen/checkClicked.png"))
	else :
		get_node("ScrollContainer/HBoxContainer/ReactionButtons/E2/E2CB").set_texture(load("res://OptionsScreen/checkBox.png"))

func _on_Hydration_toggled(button_pressed):
	if (button_pressed) :
		get_node("ScrollContainer/HBoxContainer/ReactionButtons/Hydration/HydraCB").set_texture(load("res://OptionsScreen/checkClicked.png"))
		fireToRemove.append("2-methyl-2-butanol")
	else :
		get_node("ScrollContainer/HBoxContainer/ReactionButtons/Hydration/HydraCB").set_texture(load("res://OptionsScreen/checkBox.png"))
		fireToRemove.remove("2-methyl-2-butanol")


func _on_Hydrogenation_toggled(button_pressed):
	if (button_pressed) :
		get_node("ScrollContainer/HBoxContainer/ReactionButtons/Hydrogenation/HydrogCB").set_texture(load("res://OptionsScreen/checkClicked.png"))
		basicToRemove.append("2-methylbutane")
	else :
		get_node("ScrollContainer/HBoxContainer/ReactionButtons/Hydrogenation/HydrogCB").set_texture(load("res://OptionsScreen/checkBox.png"))
		basicToRemove.remove("2-methylbutane")


func _on_Halogenation_toggled(button_pressed):
	if (button_pressed) :
		get_node("ScrollContainer/HBoxContainer/ReactionButtons/Halogenation/HaloCB").set_texture(load("res://OptionsScreen/checkClicked.png"))
		basicToRemove.append("2,3-dibromo-2-methylbutane")
	else :
		get_node("ScrollContainer/HBoxContainer/ReactionButtons/Halogenation/HaloCB").set_texture(load("res://OptionsScreen/checkBox.png"))
		basicToRemove.remove("2,3-dibromo-2-methylbutane")


func _on_Sn2_toggled(button_pressed):
	if (button_pressed) :
		get_node("ScrollContainer/HBoxContainer/ReactionButtons/SN2/Sn2CB").set_texture(load("res://OptionsScreen/checkClicked.png"))
		basicToRemove.append("1-propoxy-3-methyl-butane")
	else :
		get_node("ScrollContainer/HBoxContainer/ReactionButtons/SN2/Sn2CB").set_texture(load("res://OptionsScreen/checkBox.png"))
		basicToRemove.remove("1-propoxy-3-methyl-butane")


func _on_EpoxAdd_toggled(button_pressed):
	if (button_pressed) :
		get_node("ScrollContainer/HBoxContainer/ReactionButtons/EpoxAdd/EpoxAddCB").set_texture(load("res://OptionsScreen/checkClicked.png"))
		oralToRemove.append("5-methyl-hexanol")
	else :
		get_node("ScrollContainer/HBoxContainer/ReactionButtons/EpoxAdd/EpoxAddCB").set_texture(load("res://OptionsScreen/checkBox.png"))
		oralToRemove.remove("5-methyl-hexanol")


func _on_AHAdd_toggled(button_pressed):
	if (button_pressed) :
		get_node("ScrollContainer/HBoxContainer/ReactionButtons/AHAdd/AHAddCB").set_texture(load("res://OptionsScreen/checkClicked.png"))
		oralToRemove.append("2-methyl-hexane")
	else :
		get_node("ScrollContainer/HBoxContainer/ReactionButtons/AHAdd/AHAddCB").set_texture(load("res://OptionsScreen/checkBox.png"))
		oralToRemove.remove("2-methyl-hexane")

func checkViability() :
	if (global.basicAttack.size() == 0) :
		return false
	elif (global.flammableAttack.size() == 0) :
		return false
	elif (global.corrosiveAttack.size() == 0) :
		return false
	elif (global.oralToxicityAttack.size() == 0):
		return false
	else :
		print(global.basicAttack)
		#print(global.flammableAttack.size())
		#print(global.corrosiveAttack.size())
		#print(global.oralToxicityAttack.size())
		return true
