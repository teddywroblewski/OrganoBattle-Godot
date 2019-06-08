extends TextureRect

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var nextChemical
var parent
# Called when the node enters the scene tree for the first time.
func _ready():
	# get_tree().get_root().get_node("BattleWindow").isFinal = true
	parent = get_tree().get_root().get_node("BattleWindow")
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

#Button Pressed Functions
func _on_Option_1_pressed():
	get_node("DehydrationPopup").hide()
	get_node("Dehydration").hide()
	get_node("PBr3").hide()
	get_node("HHalide").hide()
	get_node("SOCl2").hide()
	nextChemical = parent.get_node("2M2B")
	global.power -= 1 
	var t = Timer.new()
	t.set_wait_time(9)
	t.set_one_shot(true)
	self.add_child(t)
	t.start()
	get_node("3M2Boh-2M2B-DeH").show()
	get_node("3M2Boh").hide()
	get_node("3M2Boh-2M2B-DeH").play()
	yield(t, "timeout")
	t.queue_free()
	global.currentChemical = "2M2B"
	self.hide()
	nextChemical.show()
func _on_PBr3_pressed():
	get_node("PBr3Popup").hide()
	get_node("Dehydration").hide()
	get_node("PBr3").hide()
	get_node("HHalide").hide()
	get_node("SOCl2").hide()
	nextChemical = parent.get_node("2Br3MB")
	global.power -= 1 
	var t = Timer.new()
	t.set_wait_time(8)
	t.set_one_shot(true)
	self.add_child(t)
	t.start()
	get_node("3M2Boh-2Br3MB-PBr3").show()
	get_node("3M2Boh").hide()
	get_node("3M2Boh-2Br3MB-PBr3").play()
	yield(t, "timeout")
	t.queue_free()
	global.currentChemical = "2Br3MB"
	self.hide()
	nextChemical.show()
func _on_HHalide_pressed():
	get_node("HHalidePopup").hide()
	get_node("Dehydration").hide()
	get_node("PBr3").hide()
	get_node("HHalide").hide()
	get_node("SOCl2").hide()
	nextChemical = parent.get_node("2I3MB")
	global.power -= 1 
	var t = Timer.new()
	t.set_wait_time(8)
	t.set_one_shot(true)
	self.add_child(t)
	t.start()
	get_node("3M2Boh-2I3MB-HHalide").show()
	get_node("3M2Boh").hide()
	get_node("3M2Boh-2I3MB-HHalide").play()
	yield(t, "timeout")
	t.queue_free()
	global.currentChemical = "2I3MB"
	self.hide()
	nextChemical.show()
func _on_SOCl2_pressed():
	get_node("SOCl2Popup").hide()
	get_node("Dehydration").hide()
	get_node("PBr3").hide()
	get_node("HHalide").hide()
	get_node("SOCl2").hide()
	nextChemical = parent.get_node("2Cl3MB")
	global.power -= 1 
	var t = Timer.new()
	t.set_wait_time(8)
	t.set_one_shot(true)
	self.add_child(t)
	t.start()
	get_node("3M2Boh-2Cl3MB-SOCl2").show()
	get_node("3M2Boh").hide()
	get_node("3M2Boh-2Cl3MB-SOCl2").play()
	yield(t, "timeout")
	t.queue_free()
	global.currentChemical = "2Cl3MB"
	self.hide()
	nextChemical.show()
	
#Hover Functions
func _on_DehydrationPopup_mouse_entered():
	get_node("DehydrationPopup").show()
func _on_DehydrationPopup_mouse_exited():
	get_node("DehydrationPopup").hide()
func _on_PBr3Popup_mouse_entered():
	get_node("PBr3Popup").show()
func _on_PBr3Popup_mouse_exited():
	get_node("PBr3Popup").hide()
func _on_HHalidePopup_mouse_entered():
	get_node("HHalidePopup").show()
func _on_HHalidePopup_mouse_exited():
	get_node("HHalidePopup").hide()
func _on_SOCl2Popup_mouse_entered():
	get_node("SOCl2Popup").show()
func _on_SOCl2Popup_mouse_exited():
	get_node("SOCl2Popup").hide()

