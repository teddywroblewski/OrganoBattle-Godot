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


func _on_H2Oation_pressed():
	get_node("HydrationPopup").hide()
	get_node("H2Oation").hide()
	get_node("H2ation").hide()
	get_node("Hydroboration").hide()
	get_node("Halogenation").hide()
	nextChemical = parent.get_node("2M2Boh")
	global.power -= 1
	var t = Timer.new()
	t.set_wait_time(6)
	t.set_one_shot(true)
	self.add_child(t)
	t.start()
	get_node("2M2B-2M2Boh-H2Oation").show()
	get_node("2M2B").hide()
	get_node("2M2B-2M2Boh-H2Oation").play()
	yield(t, "timeout")
	t.queue_free()
	global.currentChemical = "3M2Boh"
	self.hide()
	nextChemical.show()
func _on_H2ation_pressed():
	get_node("HydrogPopup").hide()
	get_node("H2Oation").hide()
	get_node("H2ation").hide()
	get_node("Hydroboration").hide()
	get_node("Halogenation").hide()
	nextChemical = parent.get_node("2MBane")
	global.power -= 1
	var t = Timer.new()
	t.set_wait_time(2)
	t.set_one_shot(true)
	self.add_child(t)
	t.start()
	get_node("2M2B-2MBane-H2ation").show()
	get_node("2M2B").hide()
	get_node("2M2B-2MBane-H2ation").play()
	yield(t, "timeout")
	t.queue_free()
	global.currentChemical = "2MBane"
	self.hide()
	nextChemical.show()
func _on_Hydroboration_pressed():
	get_node("HBorPopup").hide()
	get_node("H2Oation").hide()
	get_node("H2ation").hide()
	get_node("Hydroboration").hide()
	get_node("Halogenation").hide()
	global.nextChemical = "3M2Boh" #different for backwards
	global.power -= 1
	var t = Timer.new()
	t.set_wait_time(7)
	t.set_one_shot(true)
	self.add_child(t)
	t.start()
	get_node("2M2B-2MBane-H2ation").show()
	get_node("2M2B").hide()
	get_node("2M2B-2MBane-H2ation").play()
	yield(t, "timeout")
	t.queue_free()
	global.currentChemical = "2MBane"
	self.hide()
	get_tree().change_scene("res://BattleWindow.tscn") #different for backwards
func _on_Halogenation_pressed():
	get_node("HaloPopup").hide()
	get_node("H2Oation").hide()
	get_node("H2ation").hide()
	get_node("Hydroboration").hide()
	get_node("Halogenation").hide()
	nextChemical = parent.get_node("23Br2MB")
	global.power -= 1
	var t = Timer.new()
	t.set_wait_time(7)
	t.set_one_shot(true)
	self.add_child(t)
	t.start()
	get_node("2M2B-23Br2MB").show()
	get_node("2M2B").hide()
	get_node("2M2B-23Br2MB").play()
	yield(t, "timeout")
	t.queue_free()
	global.currentChemical = "23Br2MB"
	self.hide()
	nextChemical.show()
	
#Hover Functions
func _on_H2Oation_mouse_entered():
	get_node("HydrationPopup").show()
func _on_H2Oation_mouse_exited():
	get_node("HydrationPopup").hide()
func _on_H2ation_mouse_entered():
	get_node("HydrogPopup").show()
func _on_H2ation_mouse_exited():
	get_node("HydrogPopup").hide()
func _on_Hydroboration_mouse_entered():
	get_node("HBorPopup").show()
func _on_Hydroboration_mouse_exited():
	get_node("HBorPopup").hide()
func _on_Halogenation_mouse_entered():
	get_node("HaloPopup").show()
func _on_Halogenation_mouse_exited():
	get_node("HaloPopup").hide()

