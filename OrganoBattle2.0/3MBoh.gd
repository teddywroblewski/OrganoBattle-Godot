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
func _on_Dehydration_pressed():
	get_node("Dehydration").hide()
	get_node("SOCl2").hide()
	get_node("PBr3").hide()
	get_node("HydrogenHalide").hide()
	nextChemical = parent.get_node("3MB")
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
	nextChemical.show()