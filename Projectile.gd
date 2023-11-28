extends Area2D

@export var speed = -250

func start(pos):
	position = pos

func _process(delta):
	position.y += speed * delta
