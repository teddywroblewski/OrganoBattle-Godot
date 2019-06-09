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


#Button Pressed Function

func _on_AHAdd_pressed():
	#get_node("OxymercurationPopup").hide()
	get_node("AHAdd").hide()
	get_node("EpoxAdd").hide()
	get_node("Blank1").hide()
	get_node("Blank2").hide()
	nextChemical = parent.get_node("2MH")
	global.power -= 1
	var t = Timer.new()
	t.set_wait_time(10)
	t.set_one_shot(true)
	self.add_child(t)
	t.start()
	get_node("2MBMgBr-2MH-AHAdd").show()
	get_node("2MBMgBr").hide()
	get_node("2MBMgBr-2MH-AHAdd").play()
	yield(t, "timeout")
	t.queue_free()
	global.currentChemical = "2MH"
	self.hide()
	nextChemical.show()


func _on_EpoxAdd_pressed():
	#get_node("OxymercurationPopup").hide()
	get_node("AHAdd").hide()
	get_node("EpoxAdd").hide()
	get_node("Blank1").hide()
	get_node("Blank2").hide()
	nextChemical = parent.get_node("5MHoh")
	global.power -= 1
	var t = Timer.new()
	t.set_wait_time(10)
	t.set_one_shot(true)
	self.add_child(t)
	t.start()
	get_node("2MBMgBr-5MHoh-EpoxAdd").show()
	get_node("2MBMgBr").hide()
	get_node("2MBMgBr-5MHoh-EpoxAdd").play()
	yield(t, "timeout")
	t.queue_free()
	global.currentChemical = "5MHoh"
	self.hide()
	nextChemical.show()
