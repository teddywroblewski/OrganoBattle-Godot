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
var nextChemical
var corrosiveAttack = ["formaldehyde_2-methylpropanal", "2-methylbutane-magnesiumbromide"]
var flammableAttack = ["2-methyl-2-butanol", "2-bromo-3-methylbutane", "2-chloro-3-methylbutane", "1-chloro-3-methylbutane"]
var oralToxicityAttack = ["2-methylhexane", "5-methyl-1-hexanol"]
var basicAttack = ["2-methyl-2-butane", " 2,3-dibromo-2-methylbutane", "2-iodo-3-methylbutane", "1-propoxy-3-methylbutane"]

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
	nextChemical = null

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
	nextChemical = null

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
