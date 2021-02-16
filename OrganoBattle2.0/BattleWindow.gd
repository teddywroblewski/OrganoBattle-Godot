extends TextureRect

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
# Called when the node enters the scene tree for the first time.
func _ready():
	
	if (global.disableBackground) :
		get_node("Bubble BackGround").stop()
	
	if (global.startingChemical == "reload" && global.nextChemical != null) :
		get_node("FirstTargetPage")._on_ContinueButton_pressed()
		get_node("FirstTargetPage").hide()
		get_node(str(global.nextChemical)).show()
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

