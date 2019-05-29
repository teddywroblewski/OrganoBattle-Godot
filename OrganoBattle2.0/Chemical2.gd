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


func _on_Option_1_pressed():
	get_node("Dehydration").hide()
	get_node("PBr3").hide()
	nextChemical = parent.get_node("2M2B")
	global.power -= 1 
	var t = Timer.new()
	t.set_wait_time(11)
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
	get_node("Dehydration").hide()
	get_node("PBr3").hide()
	nextChemical = parent.get_node("2Br3MB")
	global.power -= 1 
	var t = Timer.new()
	t.set_wait_time(11)
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
	
#get_tree().change_scene("res://FinalSynthesisWindow.tscn")
