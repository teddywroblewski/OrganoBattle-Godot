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


#Button Pressed Functions
func _on_SN2_pressed():
	#get_node("DehydrationPopup").hide()
	get_node("SN2").hide()
	get_node("E2").hide()
	#get_node("HHalide").hide()
	#get_node("SOCl2").hide()
	nextChemical = parent.get_node("1P3MB")
	global.power -= 1 
	var t = Timer.new()
	t.set_wait_time(9)
	t.set_one_shot(true)
	self.add_child(t)
	t.start()
	get_node("1Br3MB-1P3MB-SN2").show()
	get_node("1Br3MB").hide()
	get_node("1Br3MB-1P3MB-SN2").play()
	yield(t, "timeout")
	t.queue_free()
	global.currentChemical = "1P3MB"
	self.hide()
	nextChemical.show()
func _on_E2_pressed():
	#get_node("Dehydration").hide()
	get_node("SN2").hide()
	get_node("E2").hide()
	#get_node("HydrogenHalide").hide()
	global.nextChemical = "3MB" #different for backwards
	global.power -= 1
	var t = Timer.new()
	t.set_wait_time(10)
	t.set_one_shot(true)
	self.add_child(t)
	t.start()
	get_node("1Br3MB-3MB-E2").show()
	get_node("1Br3MB").hide()
	get_node("1Br3MB-3MB-E2").play()
	yield(t, "timeout")
	t.queue_free()
	global.currentChemical = "3MB" 
	self.hide()
	get_tree().change_scene("res://BattleWindow.tscn") #different for backwards

