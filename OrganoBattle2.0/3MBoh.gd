extends TextureRect

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var nextChemical
var parent
# Called when the node enters the scene tree for the first time.
func _ready():
	parent = get_tree().get_root().get_node("BattleWindow")
# Called every frame. 'delta' is the elapsed time since the previous frame.
	
	
func _on_Dehydration_pressed():
	get_node("DeHPopup").hide()
	get_node("Dehydration").hide()
	get_node("SOCl2").hide()
	get_node("PBr3").hide()
	get_node("HydrogenHalide").hide()
	global.nextChemical = "3MB" #different for backwards
	global.power -= 1
	var t = Timer.new()
	t.set_wait_time(10)
	t.set_one_shot(true)
	self.add_child(t)
	t.start(6)
	get_node("3MBoh-3MB-DeH").show()
	get_node("3MBoh").hide()
	get_node("3MBoh-3MB-DeH").play()
	yield(t, "timeout")
	t.queue_free()
	global.currentChemical = "3MB" 
	self.hide()
	get_tree().change_scene("res://BattleWindow.tscn") #different for backwards
func _on_SOCl2_pressed():
	get_node("SOCl2Popup").hide()
	get_node("Dehydration").hide()
	get_node("SOCl2").hide()
	get_node("PBr3").hide()
	get_node("HydrogenHalide").hide()
	nextChemical = parent.get_node("1Cl3MB")
	global.power -= 1
	var t = Timer.new()
	t.set_wait_time(10)
	t.set_one_shot(true)
	self.add_child(t)
	t.start(6)
	get_node("3MBoh-1Cl3MB-SOCl2").show()
	get_node("3MBoh").hide()
	get_node("3MBoh-1Cl3MB-SOCl2").play()
	yield(t, "timeout")
	t.queue_free()
	get_node("3MBoh-1Cl3MB-SOCl2").hide()
	global.currentChemical = "1Cl3MB"
	self.hide()
	nextChemical.show()
func _on_PBr3_pressed():
	get_node("PBr3Popup").hide()
	get_node("Dehydration").hide()
	get_node("SOCl2").hide()
	get_node("PBr3").hide()
	get_node("HydrogenHalide").hide()
	nextChemical = parent.get_node("1Br3MB")
	global.power -= 1
	var t = Timer.new()
	t.set_wait_time(5)
	t.set_one_shot(true)
	self.add_child(t)
	t.start(6)
	get_node("3MBoh-1Br3MB-PBr3").show()
	get_node("3MBoh").hide()
	get_node("3MBoh-1Br3MB-PBr3").play()
	yield(t, "timeout")
	t.queue_free()
	global.currentChemical = "1Br3MB"
	self.hide()
	nextChemical.show()
func _on_HydrogenHalide_pressed():
	get_node("HHalidePopup").hide()
	get_node("Dehydration").hide()
	get_node("SOCl2").hide()
	get_node("PBr3").hide()
	get_node("HydrogenHalide").hide()
	nextChemical = parent.get_node("1I3MB")
	global.power -= 1
	var t = Timer.new()
	t.set_wait_time(5)
	t.set_one_shot(true)
	self.add_child(t)
	t.start(6)
	get_node("3MBoh-1I3MB-HHalide").show()
	get_node("3MBoh").hide()
	get_node("3MBoh-1I3MB-HHalide").play()
	yield(t, "timeout")
	t.queue_free()
	global.currentChemical = "1I3MB"
	self.hide()
	nextChemical.show()
	
#Hover Functions
func _on_Dehydration_mouse_entered():
	get_node("DeHPopup").show()
func _on_Dehydration_mouse_exited():
	get_node("DeHPopup").hide()
func _on_SOCl2_mouse_entered():
	get_node("SOCl2Popup").show()
func _on_SOCl2_mouse_exited():
	get_node("SOCl2Popup").hide()
func _on_PBr3_mouse_entered():
	get_node("PBr3Popup").show()
func _on_PBr3_mouse_exited():
	get_node("PBr3Popup").hide()
func _on_HydrogenHalide_mouse_entered():
	get_node("HHalidePopup").show()
func _on_HydrogenHalide_mouse_exited():
	get_node("HHalidePopup").hide()