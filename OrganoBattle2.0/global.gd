extends Node

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var health
var power
var enemyHealth
var startingChemical
var isFinalChemical
var currentChemical
var targetChemical
var isGameOver
var isComputerTurn

# Called when the node enters the scene tree for the first time.
func _ready():
	health = 100
	power = 10
	enemyHealth = 100
	startingChemical = null
	isFinalChemical = false
	currentChemical = null
	isGameOver = false
	targetChemical = null
	isComputerTurn = false
	
func reset() :
	health = 100
	power = 10
	enemyHealth = 100
	startingChemical = null
	isFinalChemical = false
	currentChemical = null
	isGameOver = false
	targetChemical = null
	isComputerTurn = false

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
