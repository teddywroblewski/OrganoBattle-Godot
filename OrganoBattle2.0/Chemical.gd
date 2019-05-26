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
#func _process(delta):
#	pass


func _on_Oxymercuration_pressed():
	get_node("Oxymercuration").hide()
	get_node("Ozonolysis").hide()
	get_node("Hydroboration").hide()
	get_node("FRA").hide()
	nextChemical = parent.get_node("2HMB")
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
	global.currentChemical = "2HMB"
	self.hide()
	nextChemical.show()
