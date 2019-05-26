extends TextureRect

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	# get_tree().get_root().get_node("BattleWindow").isFinal = true

	pass
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Option_1_pressed():
	get_node("Reaction1").hide()
	global.power -= 1 
	global.currentChemical = "2M2B"
	var t = Timer.new()
	t.set_wait_time(11)
	t.set_one_shot(true)
	self.add_child(t)
	t.start()
	get_node("2HMB-2M2B-DeH").show()
	get_node("2HMB").hide()
	get_node("2HMB-2M2B-DeH").play()
	yield(t, "timeout")
	t.queue_free()
	get_tree().change_scene("res://FinalSynthesisWindow.tscn")
