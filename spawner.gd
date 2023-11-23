extends Node
@onready var enemy = preload("res://../Enemy.tscn")
@onready var player = preload("res://../Player.tscn")
func _ready():
	#spawn
	var rand = RandomNumberGenerator.new()
	var enemyscene = load("res://Enemy.tscn")
	var screen_size = get_viewport().get_visible_rect().size
	for i in range(0,5):
		var enemy = enemyscene.instantiate()
		rand.randomize()
		var x = rand.randf_range(0,screen_size.x)
		rand.randomize()
		var y = rand.randf_range(0,screen_size.y)
		enemy.position.y = y
		enemy.position.x = x
		add_child(enemy)
