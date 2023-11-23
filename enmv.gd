extends Node2D
var player = null
var speed = 25
func _ready():
	player = $"player"
func _physics_process(delta):
		position += (player.position - position)/speed
	
