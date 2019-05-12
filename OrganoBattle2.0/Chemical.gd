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


func _on_Reaction1_pressed():
	nextChemical = parent.get_node("Chemical2")
	global.power -= 1
	var t = Timer.new()
	t.set_wait_time(7.5)
	t.set_one_shot(true)
	self.add_child(t)
	t.start()
	get_node("Reaction1Annimation").show()
	get_node("Benzene").hide()
	get_node("Reaction1Annimation").play()
	yield(t, "timeout")
	t.queue_free()
	global.currentChemical = "Chemical2"
	self.hide()
	nextChemical.show()
