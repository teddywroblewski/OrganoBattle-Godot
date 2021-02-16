extends TextureRect

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var nextChemical
var parent
# Called when the node enters the scene tree for the first time.
func _ready():
	parent = get_tree().get_root().get_node("BattleWindow")
	#global.currentChemical = "3MB"

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
func show_starting():
	get_node("3MB").show()
	get_node("Oxymercuration").show()
	get_node("Ozonolysis").show()
	get_node("Hydroboration").show()
	get_node("FRA").show()
	
#Button Pressed Functions
func _on_Oxymercuration_pressed():
	get_node("OxymercurationPopup").hide()
	get_node("Oxymercuration").hide()
	get_node("Ozonolysis").hide()
	get_node("Hydroboration").hide()
	get_node("FRA").hide()
	nextChemical = parent.get_node("3M2Boh")
	global.power -= 1
	var t = Timer.new()
	t.set_wait_time(10)
	t.set_one_shot(true)
	self.add_child(t)
	t.start()
	get_node("3MB-2HMB-OxM").show()
	get_node("3MB").hide()
	get_node("3MB-2HMB-OxM").play()
	yield(t, "timeout")
	t.queue_free()
	get_node("3MB-2HMB-OxM").hide()
	global.currentChemical = "3M2Boh"
	self.hide()
	nextChemical.show()
func _on_Ozonolysis_pressed():
	get_node("OzonolysisPopup").hide()
	get_node("Oxymercuration").hide()
	get_node("Ozonolysis").hide()
	get_node("Hydroboration").hide()
	get_node("FRA").hide()
	nextChemical = parent.get_node("Form2MPal")
	global.power -= 1
	var t = Timer.new()
	t.set_wait_time(10)
	t.set_one_shot(true)
	self.add_child(t)
	t.start(15)
	get_node("3MB-Form2MPal-Ozo").show()
	get_node("3MB").hide()
	get_node("3MB-Form2MPal-Ozo").play()
	yield(t, "timeout")
	t.queue_free()
	get_node("3MB-Form2MPal-Ozo").hide()
	global.currentChemical = "Form2MPal"
	self.hide()
	nextChemical.show()
func _on_Hydroboration_pressed():
	get_node("HydroborationPopup").hide()
	get_node("Oxymercuration").hide()
	get_node("Ozonolysis").hide()
	get_node("Hydroboration").hide()
	get_node("FRA").hide()
	nextChemical = parent.get_node("3MBoh")
	global.power -= 1
	var t = Timer.new()
	t.set_wait_time(10)
	t.set_one_shot(true)
	self.add_child(t)
	t.start(5)
	get_node("3MB-3MBoH-HBor").show()
	get_node("3MB").hide()
	get_node("3MB-3MBoH-HBor").play()
	yield(t, "timeout")
	t.queue_free()
	get_node("3MB-3MBoH-HBor").hide()
	get_node("3MB-3MBoH-HBor").set_frame(0)
	global.currentChemical = "3MBoh"
	self.hide()
	nextChemical.show()
	nextChemical.show_starting()
func _on_FRA_pressed():
	get_node("FRAPopup").hide()
	get_node("Oxymercuration").hide()
	get_node("Ozonolysis").hide()
	get_node("Hydroboration").hide()
	get_node("FRA").hide()
	nextChemical = parent.get_node("1Br3MB")
	global.power -= 1
	var t = Timer.new()
	t.set_wait_time(10)
	t.set_one_shot(true)
	self.add_child(t)
	t.start(10)
	get_node("3MB-1Br3MB-FRA").show()
	get_node("3MB").hide()
	get_node("3MB-1Br3MB-FRA").play()
	yield(t, "timeout")
	t.queue_free()
	get_node("3MB-1Br3MB-FRA").hide()
	global.currentChemical = "1Br3MB"
	self.hide()
	nextChemical.show()

#Hover Functions
func _on_Oxymercuration_mouse_entered():
	get_node("OxymercurationPopup").show()
func _on_Oxymercuration_mouse_exited():
	get_node("OxymercurationPopup").hide()
func _on_Ozonolysis_mouse_entered():
	get_node("OzonolysisPopup").show()
func _on_Ozonolysis_mouse_exited():
	get_node("OzonolysisPopup").hide()
func _on_Hydroboration_mouse_entered():
	get_node("HydroborationPopup").show()
func _on_Hydroboration_mouse_exited():
	get_node("HydroborationPopup").hide()
func _on_FRA_mouse_entered():
	get_node("FRAPopup").show()
func _on_FRA_mouse_exited():
	get_node("FRAPopup").hide()
