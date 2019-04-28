extends Node

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var health
var power
var startingChemical
var isFinalChemical
var currentChemical
var isGameOver

# Called when the node enters the scene tree for the first time.
func _ready():
	health = 100
	power = 10
	startingChemical = null
	isFinalChemical = false
	currentChemical = null
	isGameOver = false

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
